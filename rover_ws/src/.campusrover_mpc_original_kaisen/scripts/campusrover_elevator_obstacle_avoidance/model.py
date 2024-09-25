#! /usr/local/python3
from acados_template import AcadosModel
from casadi import SX, vertcat, sin, cos, Function

def export_campusrover_model(dt):
    
    model_name = 'campusrover_model'

    # set up states & controls
    x1 = SX.sym('x1')
    y1 = SX.sym('y1')
    th = SX.sym('th')
    sv = SX.sym('sv')
    sw = SX.sym('sw')
    a = SX.sym('a')
    alpha = SX.sym('alpha')

    x = vertcat(x1, y1, th, sv, sw, a, alpha)

    v = SX.sym('v')
    w = SX.sym('w')

    u = vertcat(v, w)

    # parameters
    cx = SX.sym('cx')
    cy = SX.sym('cy')
    cr = SX.sym('cr')
    ref_x = SX.sym('ref_x')
    ref_y = SX.sym('ref_y')
    ref_th = SX.sym('ref_th')
    way_x = SX.sym('way_x')
    way_y = SX.sym('way_y')
    way_th = SX.sym('way_th')
    c_progress = SX.sym('c_progress')
    ox = SX.sym('ox')
    oy = SX.sym('oy')
    p = vertcat(cx, cy, cr, ref_x, ref_y, ref_th, way_x, way_y, way_th, c_progress, ox, oy)

    # expression
    dx = v * dt * cos(w*dt/2)
    dy = v * dt * sin(w*dt/2)
    dth = w * dt
    x_next = x1 + (dx*cos(th) - dy*sin(th))
    y_next = y1 + (dx*sin(th) + dy*cos(th))
    th_next = th + dth
    sv_next = v
    sw_next = w
    a_next = (v - sv) / dt
    alpha_next = (w - sw) / dt
    dyn_expr = vertcat(x_next, y_next, th_next, sv_next, sw_next, a_next, alpha_next)
    
    model = AcadosModel()
    model.disc_dyn_expr = dyn_expr
    model.x = x
    model.u = u
    # model.z = z
    model.p = p
    model.name = model_name

    return model
