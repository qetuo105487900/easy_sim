#include <casadi/casadi.hpp>

// using namespace casadi;

class MPC
{
private:
  enum OBSTACLE_MODE
  {
    ROUND = 0,
    WALL = 1
  };
  enum PATH_MODE
  {
    GOAL = 0,
    PATH = 1
  };
  casadi::SX x = casadi::SX::sym("x");
  casadi::SX y = casadi::SX::sym("y");
  casadi::SX th = casadi::SX::sym("th");
  // state
  casadi::SX state = casadi::SX::vertcat({x, y, th});

  casadi::SX v = casadi::SX::sym("v");
  casadi::SX w = casadi::SX::sym("w");
  // control
  casadi::SX control = casadi::SX::vertcat({v, w});

  casadi::SX x_g = casadi::SX::sym("x_g");
  casadi::SX y_g = casadi::SX::sym("y_g");
  casadi::SX th_g = casadi::SX::sym("th_g");
  // goal
  casadi::SX goal = casadi::SX::vertcat({x_g, y_g, th_g});

  casadi::SX x_r = casadi::SX::sym("x_r");
  casadi::SX y_r = casadi::SX::sym("y_r");
  casadi::SX th_r = casadi::SX::sym("th_r");
  // ref
  casadi::SX reference = casadi::SX::vertcat({x_r, y_r, th_r});

  casadi::SX x_O = casadi::SX::sym("x_O");
  casadi::SX y_O = casadi::SX::sym("y_O");
  casadi::SX th_O = casadi::SX::sym("th_O");
  casadi::SX vx_O = casadi::SX::sym("vx_O");
  casadi::SX vy_O = casadi::SX::sym("vy_O");
  casadi::SX dis_O = casadi::SX::sym("dis_O");
  // obstacle
  casadi::SX obstacle = casadi::SX::vertcat({x_O, y_O, th_O, vx_O, vy_O, dis_O});

  casadi::SX x1_W = casadi::SX::sym("x1_W");
  casadi::SX y1_W = casadi::SX::sym("y1_W");
  casadi::SX x2_W = casadi::SX::sym("x2_W");
  casadi::SX y2_W = casadi::SX::sym("y2_W");
  casadi::SX dis_W = casadi::SX::sym("dis_W");
  // wall
  casadi::SX wall = casadi::SX::vertcat({x1_W, y1_W, x2_W, y2_W, dis_W});

  // Robot Model
  // casadi::SX RobotModel = casadi::SX::vertcat({x + v * cos(th), y + v *sin(th), fmod(th + w + M_PI, 2 * M_PI) - M_PI});
  casadi::SX RobotModel = casadi::SX::vertcat({x + v * cos(w/2) * cos(th) - v * sin(w/2) * sin(th),
                                              y + v * cos(w/2) * sin(th) + v * sin(w/2) * cos(th),
                                              fmod(th + w + M_PI, 2 * M_PI) - M_PI});
  // Obstacle Model
  casadi::SX ObstacleModel = casadi::SX::vertcat({x_O + vx_O, y_O + vy_O, th_O, vx_O, vy_O, dis_O});

  // Wall Model
  casadi::SX WallModel = casadi::SX::vertcat({x1_W, y1_W, x2_W, y2_W, dis_W});

  casadi::SX dis_cost = sqrt(((x_g - x) * (x_g - x)) + ((y_g - y) * (y_g - y)));
  casadi::SX theta_cost = abs(fmod(abs(th - th_g) + M_PI, 2 * M_PI) - M_PI);
  casadi::SX heading_cost = abs(fmod(th + M_PI, 2 * M_PI) - M_PI - atan2((y - y_g), (x - x_g)));
  casadi::SX control_cost = v * v + w * w;
  // Goal Cost Function
  // casadi::SX GoalObject = 30*dis_cost + 0.1*(theta_cost/(0.1*exp(dis_cost)))*(theta_cost/(0.1*exp(dis_cost))) + 10*control_cost/dis_cost;
  // casadi::SX GoalObject = 100*dis_cost*dis_cost + 10*(theta_cost)*(theta_cost);
  // casadi::SX GoalObject = 300*exp(dis_cost) + heading_cost*dis_cost + 10*(theta_cost/(0.3*exp(dis_cost)))*(theta_cost/(0.3*exp(dis_cost)));
  // casadi::SX GoalObject = 100*(dis_cost)*(dis_cost) + 10*(theta_cost/(exp(10*dis_cost)))*(theta_cost/(exp(10*dis_cost)));
  casadi::SX GoalObject = 100 * (dis_cost) * (dis_cost) + 10 * (theta_cost / (exp(0.1 * dis_cost))) * (theta_cost / (exp(0.1 * dis_cost)));

  casadi::SX dis_path = sqrt(((x_r - x) * (x_r - x)) + ((y_r - y) * (y_r - y)));
  casadi::SX theta_path = fmod(atan2(y_r - y, x_r - x) - th_r + M_PI, 2 * M_PI) - M_PI;
  // Path Cost Function
  casadi::SX PathObject = dis_cost * (dis_path * dis_path * sin(abs(theta_path))* sin(abs(theta_path)));

  // Obstacle Constrain
  casadi::SX Dis_ob = sqrt((x - x_O) * (x - x_O) + (y - y_O) * (y - y_O)) / (dis_O + dis_B); // round obstacle

  // Wall Constrain
  casadi::SX r = ((x2_W - x1_W) * (x - x1_W) + (y2_W - y1_W) * (y - y1_W)) / ((x2_W - x1_W) * (x2_W - x1_W) + (y2_W - y1_W) * (y2_W - y1_W));
  casadi::SX Dis_base_wall = ((r >= 1) * (sqrt((x - x2_W) * (x - x2_W) + (y - y2_W) * (y - y2_W))) +
                         (r <= 0) * (sqrt((x - x1_W) * (x - x1_W) + (y - y1_W) * (y - y1_W))) +
                         (r < 1 && r > 0) * (sqrt((x - x1_W + (x2_W - x1_W) * r) * (x - x1_W + (x2_W - x1_W) * r) + (y1_W - y + (y2_W - y1_W) * r) * (y1_W - y + (y2_W - y1_W) * r))));
  casadi::SX Dis_wall = Dis_base_wall / (dis_W + dis_B); // wall obstacle

  // Obstacle Cost Function
  casadi::SX ObstacleObject = 1 / exp((x - x_O) * (x - x_O) + (y - y_O) * (y - y_O) + __DBL_EPSILON__);

  // Wall Cost Function
  casadi::SX WallObject = 1 / exp(Dis_base_wall + __DBL_EPSILON__);

  // Casadi Function
  casadi::Function GoalCost;
  casadi::Function PathCost;
  casadi::Function Constrain_Ob;
  casadi::Function ObstacleDistanceCost;

  // Problem
  casadi::SXDict prob;
  casadi::Function solver;

  // MPC Parameter
  std::vector<casadi::SX> G;
  casadi::SX J;
  casadi::DM init_guess;

public:
  // MPC Parameter
  double dt = 3 / 30;
  int hori_step = 30;
  int path_mode = 0;
  bool verbose = false;
  std::vector<casadi::SX> X;
  std::vector<double> lbx, ubx, lbg, ubg;
  std::vector<double> x0;
  std::vector<double> control_output;
  std::vector<std::vector<double>> waypoints, checkpoints;
  casadi::Dict opts;

  // Initial State
  double x_0 = 0.0, y_0 = 0.0, th_0 = 0.0, v_0 = 0.0, w_0 = 0.0;

  // Target Point
  double x_G, y_G, th_G;

  // Base Inflation
  double dis_B = 0.4;
  // Disc Center From Base
  double l_B_back = 0.9, l_B_front = 0.0, step = 0.3;

  // Control Parameter
  double max_d_v = -0.1, max_a_v = 0.01,
         max_d_w = -M_PI / 20, max_a_w = M_PI / 20,
         min_v = 0, max_v = 1,
         min_w = -M_PI / 6, max_w = M_PI / 6;

  // Obstacle
  std::vector<casadi::SX> obstacles;

  // Reference Path
  std::vector<casadi::SX> path_waypoints;

  // Output
  casadi::DMDict result;

  MPC();
  ~MPC();

  void setUp(double horizon_time = 5, int horizon_step = 30, double Base_inflate = 0.4,
             double Base_back_inflate_dis = 0.36, double Base_front_inflate_dis = 0.0,
             double max_dec_velocity = -0.2, double max_acc_velocity = 0.2,
             double max_dec_angular = -0.5, double max_acc_angular = 0.5,
             double min_velocity = -0.5, double max_velocity = 0.5,
             double min_angular = -0.5, double max_angular = 0.5,
             double resolution = 0.15);
  void setVerbose(bool show);
  void reset();
  void resetInitGuess();

  void setInitialState(double x = 0, double y = 0, double yaw = 0, double v = 0, double w = 0);
  void setGoal(double x = 0, double y = 0, double yaw = 0);
  void setCheckPoint(double x = 0, double y = 0, double yaw = 0);
  void resetCheckPoint();
  void setRefPath(std::vector<std::vector<double>> waypoints); // waypoints
  void setObstacleMode(int mode);
  void setPathMode(int mode);

  void getControlMatrix(std::vector<std::pair<double, double>> &out);

  void updateObstacle(std::vector<std::vector<double>> obs); // formate: [x,y,yaw,vx,vy,dimen]
  void updateSolver();
  casadi::Function pointSolver();
  casadi::Function pathSolver();

  void solve();
};
