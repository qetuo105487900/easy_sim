#include <mpc.hpp>

MPC::MPC()
{
}

MPC::~MPC()
{
}

void MPC::setUp(double horizon_time, int horizon_step, double Base_inflate,
                double Base_back_inflate_dis, double Base_front_inflate_dis,
                double max_dec_velocity, double max_acc_velocity,
                double max_dec_angular, double max_acc_angular,
                double min_velocity, double max_velocity,
                double min_angular, double max_angular,
                double resolution)
{
  dt = horizon_time / horizon_step;
  hori_step = horizon_step;
  dis_B = Base_inflate;
  l_B_back = Base_back_inflate_dis;
  l_B_front = Base_front_inflate_dis;
  step = resolution;
  max_a_v = max_acc_velocity;
  max_d_v = max_dec_velocity;
  max_a_w = max_acc_angular;
  max_d_w = max_dec_angular;
  max_v = max_velocity;
  min_v = min_velocity;
  max_w = max_angular;
  min_w = min_angular;

  RobotModel = casadi::SX::vertcat({x + v * dt * cos((w * dt)/2) * cos(th) - v * dt * sin((w * dt)/2) * sin(th),
                                    y + v * dt * cos((w * dt)/2) * sin(th) + v * dt * sin((w * dt)/2) * cos(th),
                                    fmod(th + w * dt + M_PI, 2 * M_PI) - M_PI});
  ObstacleModel = casadi::SX::vertcat({x_O + vx_O * dt, y_O + vy_O * dt, th_O, vx_O, vy_O, dis_O});
  Dis_ob = sqrt((x - x_O) * (x - x_O) + (y - y_O) * (y - y_O)) / (dis_O + dis_B);

  GoalCost = casadi::Function("CostPath", {state, control, goal}, {RobotModel, GoalObject}, {"x0", "u", "g"}, {"xf", "qf"});
  PathCost = casadi::Function("CostPath", {state, control, goal, reference}, {RobotModel, PathObject}, {"x0", "u", "g", "p"}, {"xf", "qf"});
  Constrain_Ob = casadi::Function("Constrain_O", {state, obstacle}, {Dis_ob}, {"x0", "o"}, {"qf"});
  ObstacleDistanceCost = casadi::Function("CostOb", {state, obstacle}, {ObstacleModel, ObstacleObject}, {"x0", "o"}, {"xf", "qf"});

  opts["ipopt.print_level"] = 0;               // 0~20
  opts["ipopt.sb"] = "yes";                    // hide copy right
  opts["ipopt.max_cpu_time"] = 8e-2;           // time limit
  opts["ipopt.warm_start_init_point"] = "yes"; // warm start
  opts["ipopt.hessian_constant"] = "yes";      // disable hessian compute
  opts["ipopt.linear_solver"] = "ma97";        // looking for better solver?
  // ma27, ma57(core dumped), ma77(weird), ma86(lag), ma97(fine)

  opts["print_time"] = 0;       // time consume
  opts["verbose_init"] = false; // init state

  for (auto i = 0; i < 5 * (hori_step + 1) + 3; i++)
  {
    x0.push_back(0);
  }
}

void MPC::setVerbose(bool show)
{
  if (show)
    opts["print_time"] = 1;
  else
    opts["print_time"] = 0;
  verbose = show;
}

void MPC::solve()
{
  casadi::DMDict arg;

  arg["x0"] = x0;
  arg["lbx"] = lbx;
  arg["ubx"] = ubx;
  arg["lbg"] = lbg;
  arg["ubg"] = ubg;
  arg["lam_x0"] = init_guess;

  result = solver(arg);

  init_guess = result.at("x");

  control_output.clear();
  std::vector<double> temp = std::vector<double>(result.at("x"));
  for (auto i = 5; i < temp.size(); i++)
  {
    if (i % 5 == 3 || i % 5 == 4)
      control_output.push_back(int(temp.at(i) * 100) / 100.);
  }

  if (verbose)
  {
    double dis = sqrt(pow(x_0 - x_G, 2) + pow(y_0 - y_G, 2));
    std::cout << "\nTarget: " << x_G << ", " << y_G << ", " << th_G << std::endl;
    std::cout << "Position: " << x_0 << ", " << y_0 << ", " << th_0 << std::endl;
    std::cout << "Distance: " << dis << std::endl;
    std::cout << "Checkpoint Nums: " << checkpoints.size() << std::endl;
    std::cout << "V: " << control_output.at(0) << " ,W: " << control_output.at(1) << "\n" << std::endl;
    std::cout << "==================================================================" << std::endl;
  }
}

void MPC::reset()
{
  resetInitGuess();
  obstacles.clear();
  waypoints.clear();
  control_output.clear();
  checkpoints.clear();
  x_G = x_0;
  y_G = y_0;
  th_G = th_0;
}

void MPC::resetInitGuess()
{
  init_guess = casadi::DM();
}

void MPC::updateSolver()
{
  X.clear();
  G.clear();
  lbx.clear();
  lbg.clear();
  ubx.clear();
  ubg.clear();
  x0.clear();

  try
  {
    if (path_mode == 0)
    {
      solver = pointSolver();
    }
    else if (path_mode == 1)
    {
      solver = pathSolver();
    }
  }
  catch(const std::exception& e)
  {
    std::cerr << e.what() << '\n';
  }
}

casadi::Function MPC::pointSolver()
{
  J = 0;
  casadi::SXDict PathCost_input, ObstacleCost_input, Constrain_ob_input;
  casadi::SX Uk_last = casadi::SX::sym("U", 2);
  casadi::SX Xk = casadi::SX::sym("X_" + std::to_string(0), 3);
  casadi::SX Gk = casadi::SX::sym("Goal", 3);
  std::vector<casadi::SX> obstacles_temp = obstacles;

  if (checkpoints.size() != 0)
  {
    if (std::sqrt(std::pow(x_0 - checkpoints.at(0).at(0), 2) +
                  std::pow(y_0 - checkpoints.at(0).at(1), 2)) < 0.1 && 
        std::abs(th_0 - checkpoints.at(0).at(2)) < 0.1)
    {
      if (verbose)
      { 
        std::cout << "[MPC] Arrived Checkpoint" << std::endl;
        std::cout << "==================================================================" << std::endl;
      }
      checkpoints.erase(checkpoints.begin());
    }
  }

  // goal
  X.push_back(Gk);
  if (checkpoints.size() != 0)
  {
    lbx.push_back(checkpoints.at(0).at(0));
    lbx.push_back(checkpoints.at(0).at(1));
    lbx.push_back(checkpoints.at(0).at(2));
    ubx.push_back(checkpoints.at(0).at(0));
    ubx.push_back(checkpoints.at(0).at(1));
    ubx.push_back(checkpoints.at(0).at(2));
  }
  else
  {
    lbx.push_back(x_G);
    lbx.push_back(y_G);
    lbx.push_back(th_G);
    ubx.push_back(x_G);
    ubx.push_back(y_G);
    ubx.push_back(th_G);
  }

  double dis = sqrt(((x_G - x_0) * (x_G - x_0)) + ((y_G - y_0) * (y_G - y_0)));
  GoalObject = (1 * (dis_cost) * (dis_cost) + 0.1 * (theta_cost / (exp(0.1 * dis_cost))) * (theta_cost / (exp(0.1 * dis_cost)))) / (0.01*dis);
  GoalCost = casadi::Function("CostPath", {state, control, goal}, {RobotModel, GoalObject}, {"x0", "u", "g"}, {"xf", "qf"});

  // initial control
  X.push_back(Uk_last);
  lbx.push_back(v_0);
  lbx.push_back(w_0);
  ubx.push_back(v_0);
  ubx.push_back(w_0);

  // initial pose
  X.push_back(Xk);
  lbx.push_back(x_0);
  lbx.push_back(y_0);
  lbx.push_back(th_0);
  ubx.push_back(x_0);
  ubx.push_back(y_0);
  ubx.push_back(th_0);

  PathCost_input["g"] = Gk;

  for (auto k = 0; k < hori_step; k++)
  {
    // push control
    casadi::SX Uk = casadi::SX::sym("U_" + std::to_string(k), 2);
    X.push_back(Uk);
    lbx.push_back(min_v);
    lbx.push_back(min_w);
    ubx.push_back(max_v);
    ubx.push_back(max_w);

    PathCost_input["x0"] = Xk;
    PathCost_input["u"] = Uk;
    casadi::SXDict Fk = GoalCost(PathCost_input);
    J += Fk["qf"];

    Xk = casadi::SX::sym("X_" + std::to_string(k + 1), 3);
    X.push_back(Xk);
    lbx.push_back(-INFINITY);
    lbx.push_back(-INFINITY);
    lbx.push_back(-INFINITY);
    ubx.push_back(INFINITY);
    ubx.push_back(INFINITY);
    ubx.push_back(INFINITY);

    // for (auto& ob:obstacles_temp)
    if (obstacles_temp.size() != 0)
    {
      // for (auto j = -l_B_back; j <= l_B_front; j+=step)
      for (auto j : {-l_B_back, l_B_front})
      {
        Constrain_ob_input["x0"] = casadi::SX::vertcat({Xk(0) + j * cos(Xk(2)), Xk(1) + j * sin(Xk(2)), Xk(2)});
        Constrain_ob_input["o"] = casadi::SX::horzcat(obstacles_temp);
        casadi::SXDict Ck = Constrain_Ob(Constrain_ob_input);
        for (auto i = 0; i < obstacles_temp.size(); i++)
        {
          G.push_back(Ck["qf"](i));
          lbg.push_back(1);
          ubg.push_back(INFINITY);
        }
      }
      ObstacleCost_input["x0"] = Xk;
      ObstacleCost_input["o"] = casadi::SX::horzcat(obstacles_temp);
      casadi::SXDict Ok = ObstacleDistanceCost(ObstacleCost_input);
      J += casadi::SX::sum2(Ok["qf"]);
      // ob = Ok["xf"];
    }

    G.push_back(Uk - Uk_last);
    lbg.push_back(max_d_v * dt);
    lbg.push_back(max_d_w * dt);
    ubg.push_back(max_a_v * dt);
    ubg.push_back(max_a_w * dt);

    Uk_last = Uk;

    G.push_back(Fk["xf"] - Xk);
    lbg.push_back(0);
    lbg.push_back(0);
    lbg.push_back(0);
    ubg.push_back(0);
    ubg.push_back(0);
    ubg.push_back(0);
  }

  // final control
  G.push_back(Uk_last);
  if (checkpoints.size() != 0)
  {
    lbg.push_back(min_v);
    lbg.push_back(min_w);
    ubg.push_back(max_v);
    ubg.push_back(max_w); 
  }
  else
  {
    lbg.push_back(0);
    lbg.push_back(0);
    ubg.push_back(0);
    ubg.push_back(0);
  }

  prob["f"] = J;
  prob["x"] = casadi::SX::vertcat(X);
  prob["g"] = casadi::SX::vertcat(G);

  return casadi::nlpsol("solver", "ipopt", prob, opts);
  // solver.generate_dependencies("mpc.c");
}

casadi::Function MPC::pathSolver()
{
  J = 0;
  casadi::SXDict GoalCost_input, PathCost_input, ObstacleCost_input, Constrain_ob_input;
  casadi::SX Uk_last = casadi::SX::sym("U", 2);
  casadi::SX Xk = casadi::SX::sym("X_" + std::to_string(0), 3);
  casadi::SX Gk = casadi::SX::sym("Goal", 3);
  std::vector<casadi::SX> obstacles_temp = obstacles;
  std::vector<casadi::SX> path_temp;

  double dis = sqrt(((x_G - x_0) * (x_G - x_0)) + ((y_G - y_0) * (y_G - y_0)));
  GoalObject = 1*(1 * (dis_cost) * (dis_cost) + 0.1 * (theta_cost / (exp(0.1 * dis_cost))) * (theta_cost / (exp(0.1 * dis_cost)))) / (1*dis*dis + 0.1*M_PI*M_PI);
  GoalCost = casadi::Function("CostPath", {state, control, goal}, {RobotModel, GoalObject}, {"x0", "u", "g"}, {"xf", "qf"});

  // goal
  X.push_back(Gk);
  lbx.push_back(x_G);
  lbx.push_back(y_G);
  lbx.push_back(th_G);
  ubx.push_back(x_G);
  ubx.push_back(y_G);
  ubx.push_back(th_G);

  // initial control
  X.push_back(Uk_last);
  lbx.push_back(v_0);
  lbx.push_back(w_0);
  ubx.push_back(v_0);
  ubx.push_back(w_0);

  // initial pose
  X.push_back(Xk);
  lbx.push_back(x_0);
  lbx.push_back(y_0);
  lbx.push_back(th_0);
  ubx.push_back(x_0);
  ubx.push_back(y_0);
  ubx.push_back(th_0);

  for (auto k = 0; k < hori_step; k++)
  {
    // push control
    casadi::SX Uk = casadi::SX::sym("U_" + std::to_string(k), 2);
    X.push_back(Uk);
    lbx.push_back(min_v);
    lbx.push_back(min_w);
    ubx.push_back(max_v);
    ubx.push_back(max_w);

    PathCost_input["x0"] = Xk;
    PathCost_input["u"] = Uk;
    PathCost_input["g"] = Gk;
    PathCost_input["p"] = casadi::SX::horzcat(path_waypoints);
    casadi::SXDict Fk = PathCost(PathCost_input);
    J += casadi::SX::mmin(Fk["qf"]);

    GoalCost_input["x0"] = Xk;
    GoalCost_input["u"] = Uk_last;
    GoalCost_input["g"] = Gk;
    casadi::SXDict Nk = GoalCost(GoalCost_input);
    J += Nk["qf"];

    Xk = casadi::SX::sym("X_" + std::to_string(k + 1), 3);
    X.push_back(Xk);
    lbx.push_back(-INFINITY);
    lbx.push_back(-INFINITY);
    lbx.push_back(-INFINITY);
    ubx.push_back(INFINITY);
    ubx.push_back(INFINITY);
    ubx.push_back(INFINITY);

    // for (auto& ob:obstacles_temp)
    if (obstacles_temp.size() != 0)
    {
      // for (auto j = -l_B_back; j <= l_B_front; j+=step)
      for (auto j : {-l_B_back, l_B_front})
      {
        Constrain_ob_input["x0"] = casadi::SX::vertcat({Xk(0) + j * cos(Xk(2)), Xk(1) + j * sin(Xk(2)), Xk(2)});
        Constrain_ob_input["o"] = casadi::SX::horzcat(obstacles_temp);
        casadi::SXDict Ck = Constrain_Ob(Constrain_ob_input);
        for (auto i = 0; i < obstacles_temp.size(); i++)
        {
          G.push_back(Ck["qf"](i));
          lbg.push_back(1);
          ubg.push_back(INFINITY);
        }
      }
      ObstacleCost_input["x0"] = Xk;
      ObstacleCost_input["o"] = casadi::SX::horzcat(obstacles_temp);
      casadi::SXDict Ok = ObstacleDistanceCost(ObstacleCost_input);
      J += casadi::SX::sum2(Ok["qf"]);
      // ob = Ok["xf"];
    }

    G.push_back(Uk - Uk_last);
    lbg.push_back(max_d_v * dt);
    lbg.push_back(max_d_w * dt);
    ubg.push_back(max_a_v * dt);
    ubg.push_back(max_a_w * dt);

    Uk_last = Uk;

    G.push_back(casadi::SX::vertcat({Fk["xf"](0), Fk["xf"](1), Fk["xf"](2)}) - Xk);
    // G.push_back(Fk["xf"] - Xk);
    lbg.push_back(0);
    lbg.push_back(0);
    lbg.push_back(0);
    ubg.push_back(0);
    ubg.push_back(0);
    ubg.push_back(0);
  }

  // GoalObject = 1*(1 * (dis_cost) * (dis_cost) + 0.1 * (theta_cost / (exp(0.1 * dis_cost))) * (theta_cost / (exp(0.1 * dis_cost))));
  // GoalCost = casadi::Function("CostPath", {state, control, goal}, {RobotModel, GoalObject}, {"x0", "u", "g"}, {"xf", "qf"});

  GoalCost_input["x0"] = Xk;
  GoalCost_input["u"] = Uk_last;
  GoalCost_input["g"] = Gk;
  casadi::SXDict Fk = GoalCost(GoalCost_input);
  J += Fk["qf"];

  // final control
  G.push_back(Uk_last);
  lbg.push_back(0);
  lbg.push_back(0);
  ubg.push_back(0);
  ubg.push_back(0);

  prob["f"] = J;
  prob["x"] = casadi::SX::vertcat(X);
  prob["g"] = casadi::SX::vertcat(G);

  return casadi::nlpsol("solver", "ipopt", prob, opts);
}

void MPC::setGoal(double x_, double y_, double yaw_)
{
  if (x_ == x_0 && y_ == y_0 && yaw_ == th_0)
    return;
  if (std::isnan(x_) || std::isnan(y_) || std::isnan(yaw_))
  {
    std::cout << "nan detect on goal" << std::endl;
    return;
  }
  // setCheckPoint(x_G, y_G, th_G);
  if (x_ == 0.0)
    x_ += 0.0001;
  if (y_ == 0.0)
    y_ += 0.0001;
  if (yaw_ == 0.0)
    yaw_ += 0.0001;
  x_G = x_;
  y_G = y_;
  th_G = yaw_;
}

void MPC::setCheckPoint(double x_, double y_, double yaw_)
{
  if (x_ == x_0 && y_ == y_0 && yaw_ == th_0)
    return;
  if (std::isnan(x_) || std::isnan(y_) || std::isnan(yaw_))
  {
    std::cout << "nan detect on checkpoint" << std::endl;
    return;
  }
  for (auto cp : checkpoints)
    if (std::sqrt(std::pow(x_ - cp.at(0), 2) +
                  std::pow(y_ - cp.at(1), 2)) < 0.1)
      return;

  std::vector<double> point;
  point.push_back(x_);
  point.push_back(y_);
  point.push_back(yaw_);
  checkpoints.push_back(point);

  path_waypoints.push_back(casadi::SX::vertcat({point}));
}

void MPC::resetCheckPoint()
{
  checkpoints.clear();
}

void MPC::setInitialState(double x, double y, double yaw, double v, double w)
{
  if (std::isnan(x) || std::isnan(y) || std::isnan(yaw) || std::isnan(v) || std::isnan(w))
    return;
  x_0 = x;
  y_0 = y;
  th_0 = yaw;
  v_0 = v;
  w_0 = w;
}

void MPC::setRefPath(std::vector<std::vector<double>> waypoints)
{
  checkpoints.clear();
  for (int i = 0; i < waypoints.size(); i++)
  {
    setCheckPoint(waypoints.at(i).at(0), waypoints.at(i).at(1), waypoints.at(i).at(2));
  }
}

/*
  ROUND:  0
  WALL:   1
*/
void MPC::setObstacleMode(int mode)
{
  switch (mode)
  {
  case 0: // round
    std::cout << "[MPC] Set Obstacle To Mode: round" << std::endl;
    Constrain_Ob = casadi::Function("Constrain_O", {state, obstacle}, {Dis_ob}, {"x0", "o"}, {"qf"});
    ObstacleDistanceCost = casadi::Function("CostOb", {state, obstacle}, {ObstacleModel, ObstacleObject}, {"x0", "o"}, {"xf", "qf"});
    break;

  case 1: // wall
    std::cout << "[MPC] Set Obstacle To Mode: wall" << std::endl;
    Constrain_Ob = casadi::Function("Constrain_O", {state, wall}, {Dis_wall}, {"x0", "o"}, {"qf"});
    ObstacleDistanceCost = casadi::Function("CostOb", {state, wall}, {WallModel, WallObject}, {"x0", "o"}, {"xf", "qf"});
    break;

  default:
    std::cout << "[MPC] Set Obstacle To Mode: default" << std::endl;
    Constrain_Ob = casadi::Function("Constrain_O", {state, obstacle}, {Dis_ob}, {"x0", "o"}, {"qf"});
    ObstacleDistanceCost = casadi::Function("CostOb", {state, obstacle}, {ObstacleModel, ObstacleObject}, {"x0", "o"}, {"xf", "qf"});
    break;
  }
}

void MPC::setPathMode(int mode)
{
  switch (mode)
  {
    case 0:
      path_mode = 0;
      std::cout << "[MPC] Set Path To Mode: goal" << std::endl;
      break;

    case 1:
      path_mode = 1;
      std::cout << "[MPC] Set Path To Mode: ref path" << std::endl;
      break;

    default:
      path_mode = 0;
      std::cout << "[MPC] Set Path To Mode: default" << std::endl;
      break;
  }
}

void MPC::updateObstacle(std::vector<std::vector<double>> obs)
{
  obstacles.clear();
  for (auto ob : obs)
  {
    obstacles.push_back(casadi::SX::vertcat({ob}));
  }
}

void MPC::getControlMatrix(std::vector<std::pair<double, double>> &out)
{
  out.clear();
  for (auto i = 0; i < control_output.size(); i += 2)
  {
    out.push_back(std::pair<double, double>(control_output.at(i), control_output.at(i + 1)));
  }
}
