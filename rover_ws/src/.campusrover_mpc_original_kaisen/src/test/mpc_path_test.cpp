#include <mpc.hpp>
  
MPC mpc;

int main(int argc, char const *argv[])
{
  std::vector<std::pair<double, double>> control;
  std::vector<std::vector<double>> obs;
  std::vector<std::vector<double>> waypoints;
  std::vector<double> ob, ob1, point;
  
  ob.push_back(0.5); ob.push_back(1.5); ob.push_back(0.0); // x,y,theta
  ob.push_back(0.0); ob.push_back(0.0); // v,w
  ob.push_back(0.2); // obstacle inflate
  obs.push_back(ob);
  
  ob1.push_back(1.0); ob1.push_back(1.5); ob1.push_back(0.0); // x,y,theta
  ob1.push_back(0.0); ob1.push_back(0.0); // v,w
  ob1.push_back(0.2); // obstacle inflate
  obs.push_back(ob1);

  point.push_back(1); point.push_back(-1); point.push_back(45*M_PI/180);
  waypoints.push_back(point);
  point.clear();
  point.push_back(1); point.push_back(1); point.push_back(45*M_PI/180);
  waypoints.push_back(point);
  point.clear();
  point.push_back(3); point.push_back(2); point.push_back(45*M_PI/180);
  waypoints.push_back(point);
  point.clear();

  mpc.setUp();
  // mpc.setCheckPoint(-1, -1, 45*M_PI/180);
  mpc.setRefPath(waypoints);
  mpc.setGoal(3, 2, 45*M_PI/180);
  mpc.setInitialState(0, 0, 0*M_PI/180, 0, 0);
  mpc.setObstacleMode(0);
  mpc.setPathMode(1);
  double dis = INFINITY, n_dis = INFINITY, cnt = INFINITY; 
  while (dis > 0.05 || n_dis > 0.02 || cnt > 0.01)
  {
    // mpc.updateObstacle(obs);
    mpc.updateSolver();
    mpc.solve();
    mpc.setVerbose(true);

    mpc.getControlMatrix(control);

    std::vector<double> r = std::vector<double>(mpc.result.at("x"));
    // std::cout << r << std::endl;
    dis = std::sqrt((r.at(5)-mpc.x_G)*(r.at(5)-mpc.x_G) + (r.at(6)-mpc.y_G)*(r.at(6)-mpc.y_G));
    n_dis = std::sqrt((r.at(r.size()-3)-mpc.x_G)*(r.at(r.size()-3)-mpc.x_G) + (r.at(r.size()-2)-mpc.y_G)*(r.at(r.size()-2)-mpc.y_G));
    cnt = abs(control.at(0).first)+abs(control.at(0).second);

    // std::cout << "Target: " << mpc.x_G << ", " << mpc.y_G << ", " << mpc.th_G << std::endl;
    // std::cout << "Current Distance: " << dis << std::endl;
    // std::cout << "Position: " << r.at(5) << ", " << r.at(6) << ", " << r.at(7) << std::endl;
    // std::cout << "V: " << control.at(0).first << " ,W: " << control.at(0).second << std::endl;
    // std::cout << "=====================================================================" << std::endl;

    mpc.setInitialState(r.at(10), r.at(11), r.at(12), control.at(0).first, control.at(0).second);
  }

  return 0;
}
