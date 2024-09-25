from acados_template import AcadosOcp, AcadosOcpSolver, ocp_get_default_cmake_builder
from model import export_campusrover_model
from casadi import *

def gen_model(prediction_steps=10, horizon_duration=2, 
              max_v=0.5, min_v=-0.5, 
              max_w=0.5, min_w=-0.5,
              max_a=0.3, min_a=-0.3,
              max_alpha=0.5, min_alpha=-0.5,
              car_front=0.3, car_back=-0.6, car_left=0.32, car_right=-0.32, obstacle_inflation=0.02):
    ocp = AcadosOcp()
    model = export_campusrover_model(horizon_duration/prediction_steps)
    nx = model.x.size()[0]
    nu = model.u.size()[0]
    ny = nx + nu
    ny_e = nx

    ocp.model = model
    
    ocp.dims.N = prediction_steps # set dimensions
    ocp.solver_options.tf = horizon_duration # set prediction horizon

    # state variables
    x1 = ocp.model.x[0]
    y1 = ocp.model.x[1]
    th = ocp.model.x[2]
    sv = ocp.model.x[3]
    sw = ocp.model.x[4]

    # parameter variables
    cx = ocp.model.p[0]
    cy = ocp.model.p[1]
    cr = ocp.model.p[2]

    ref_x = ocp.model.p[3]
    ref_y = ocp.model.p[4]
    ref_th = ocp.model.p[5]

    way_x = ocp.model.p[6]
    way_y = ocp.model.p[7]
    way_th = ocp.model.p[8]

    c_progress = ocp.model.p[9]

    ox = ocp.model.p[10]
    oy = ocp.model.p[11]

    u_ref = [0,0]

    dis = sqrt((x1 - way_x)**2 + (y1 - way_y)**2)
    # # cost expression
    Ec = sin(ref_th)*(x1 - ref_x) - cos(ref_th)*(y1 - ref_y) 
    El = cos(way_th)*(x1 - way_x) + sin(way_th)*(y1 - way_y)
    E_tracking = vertcat(Ec,dis) #np.array([Ec,El])
    Q_e = SX([[1, 0.0], [0.0, 0.1]])
    J_tracking = E_tracking.T@Q_e@E_tracking

    Eangle = 3.14 * sin((ref_th - th)/2)
    Q_angle = 0.01 + 0.09 * exp(-10 *dis)#* dis#exp(-10 *dis)
    J_angle = pow(Eangle, 2) * Q_angle 

    # Espeed =  vertcat([v,w])Qangle
    Q_speed = SX([[0.1, 0.0], [0.0, 0.1]])* exp(-10 * dis)
    J_speed = ocp.model.u.T@Q_speed@ocp.model.u  

    J = J_tracking + J_angle + J_speed
    J_e = J_tracking + J_angle


    ocp.cost.cost_type = 'EXTERNAL'
    ocp.model.cost_expr_ext_cost = J
    # ocp.model.cost_expr_ext_cost_custom_hess = ?

    ocp.cost.cost_type_e = 'EXTERNAL'
    ocp.model.cost_expr_ext_cost_e = J_e
    # ocp.model.cost_expr_ext_cost_custom_hess_e = ?


    # constrain expression
    C_bubble_inside = pow(x1-cx, 2) + pow(y1-cy, 2) - pow(cr, 2)
    C_bubble_obstacle = pow(x1-ox, 2) + pow(y1-oy, 2) - pow(0.32, 2)

    # obstacle transform to base_link
    # dis_obstacle_baselink = sqrt(pow(ox-x1, 2) + pow(oy-y1, 2))
    # th_obstacle_baselink = atan2(oy-y1,ox-x1)
    # ox_baselink = dis_obstacle_baselink * cos(th_obstacle_baselink-th)
    # oy_baselink = dis_obstacle_baselink * sin(th_obstacle_baselink-th)
    ##car_front=0.3, car_back=-0.6, car_left=0.33, car_right=-0.33, obstacle_inflation=0.01
    # C_obstacle_front = ox_baselink > (car_front + obstacle_inflation)   # > 0
    # C_obstacle_back  = ox_baselink < (car_back - obstacle_inflation) # > 0
    # C_obstacle_left  = oy_baselink > (car_left + obstacle_inflation) # > 0
    # C_obstacle_right = oy_baselink < (car_right - obstacle_inflation)  # > 0
    # C_obstacle = if_else(logic_or(logic_or(logic_or(C_obstacle_front, C_obstacle_back), C_obstacle_left), C_obstacle_right),-1,1)

    # C_test_x = if_else(ox_baselink > car_front,car_front,if_else(ox_baselink<car_back,car_back,ox_baselink))
    # C_test_y = if_else(oy_baselink > car_left,car_left,if_else(oy_baselink<car_right,car_right,oy_baselink))
    # C_obstacle = obstacle_inflation ** 2 - ((ox_baselink-C_test_x) ** 2 + (oy_baselink-C_test_y) ** 2)

    # ocp.model.con_h_expr =  vertcat(C_bubble_inside,C_obstacle)
    # ocp.model.con_h_expr_e =  vertcat(C_bubble_inside,C_obstacle)
    # ocp.model.con_h_expr =  SX.zeros(1) 
    # ocp.model.con_h_expr_e = SX.zeros(1)
    ocp.model.con_h_expr =  vertcat(C_bubble_inside,C_bubble_obstacle)
    ocp.model.con_h_expr_e =  vertcat(C_bubble_inside,C_bubble_obstacle)



    # constrains
    lbx = [min_a, min_alpha]
    ubx = [max_a, max_alpha]
    ocp.constraints.lbx = np.array(lbx)
    ocp.constraints.ubx =  np.array(ubx)
    ocp.constraints.idxbx = np.array([5, 6])
    ocp.constraints.lbx_e = np.array(lbx)
    ocp.constraints.ubx_e =  np.array(ubx)
    ocp.constraints.idxbx_e = np.array([5, 6])

    lbu = [min_v, min_w]
    ubu = [max_v, max_w]
    ocp.constraints.lbu = np.array(lbu)
    ocp.constraints.ubu = np.array(ubu)
    ocp.constraints.idxbu = np.array([0, 1])

    ocp.constraints.lh = np.array([-999,0])
    ocp.constraints.uh = np.array([0,999])
    ocp.constraints.lh_e = np.array([-999,0])
    ocp.constraints.uh_e = np.array([0,999])

    ocp.constraints.x0 = np.array([0, 0, 0, 0, 0, 0, 0])
    ocp.parameter_values = np.array([0.0, 0.0, 10.0, 0, 0, 0, 0, 0, 0, 0, 10, 10])

    ocp.solver_options.qp_solver = 'FULL_CONDENSING_HPIPM'
    ### qp_solver OPTIONS ###
    # FULL_CONDENSING_QPOASES
    # PARTIAL_CONDENSING_HPIPM, FULL_CONDENSING_QPOASES, FULL_CONDENSING_HPIPM,
    # PARTIAL_CONDENSING_QPDUNES, PARTIAL_CONDENSING_OSQP
    ocp.solver_options.hessian_approx = 'EXACT' # GAUSS_NEWTON EXACT
    ocp.solver_options.integrator_type = 'DISCRETE'
    ocp.solver_options.ext_cost_num_hess = 0
    ocp.solver_options.nlp_solver_type = 'SQP' # SQP_RTI, SQP
    ocp.solver_options.nlp_solver_max_iter = 100
    ocp.solver_options.nlp_solver_step_length = 1.
    ocp.solver_options.print_level = 0
    ocp.solver_options.globalization = 'MERIT_BACKTRACKING'

    cmake_builder = ocp_get_default_cmake_builder()
    AcadosOcpSolver(ocp, json_file='acados_ocp.json')#, cmake_builder=cmake_builder)

if __name__ == '__main__':
    gen_model()