#include <vector>
#include <memory>
#include <ctime>

#include "acados/utils/print.h"
#include "acados_c/ocp_nlp_interface.h"
#include "acados_c/external_function_interface.h"
#include "acados/ocp_nlp/ocp_nlp_constraints_bgh.h"
#include "acados/ocp_nlp/ocp_nlp_cost_ls.h"

#include "acados_solver_campusrover_model.h"

#include <nav_msgs/Odometry.h>
#include <nav_msgs/Path.h>
#include <tf/transform_broadcaster.h>

class mpcParkingBubble
{
  struct solver_input {
    std::unique_ptr<std::vector<double> > x0;
    // std::unique_ptr<std::vector<double> > x0;
  };
 private:
  campusrover_model_solver_capsule *capsule_;
  ocp_nlp_config *nlp_config_;
  ocp_nlp_dims *nlp_dims_;
  ocp_nlp_in *nlp_in_;
  ocp_nlp_out *nlp_out_;

  solver_input acados_in_;

  int N_,nx_,nu_,np_;
  int status_;
  nav_msgs::Odometry odom_pose_;
  double x_current_[7];
  double horizon_state_[7];
  double u_current_[2];
  double param_[12];
  nav_msgs::Path bubbles_, mpc_predict_path_;
  std::vector<std::vector<double>> ref_path_;
  std::vector<double> compute_time;
  int error_n;


 public:
  mpcParkingBubble();
  ~mpcParkingBubble();
  bool GetConstrainBubble(std::vector<double> &bubble, std::vector<double> &obstacle, const std::vector<double> &current_state, const nav_msgs::Path &bubbles);
  std::vector<std::vector<double>> GetDenseWaypointsWithAngle(const nav_msgs::Path &bubbles);
  std::vector<double> GetGuidePoint(const std::vector<double> &current_state, const std::vector<std::vector<double>> &ref_path, int ref_len = 10);
  void GetParameter(int &bubble_idx, geometry_msgs::Pose &ref_pose, geometry_msgs::Pose &way_pose, const geometry_msgs::PoseStamped &odom_pose, const nav_msgs::Path &bubbles);
  bool GetMpcPredictPath(nav_msgs::Path &predict_path);
  nav_msgs::Path UpdateBubbles(const nav_msgs::Path &bubbles);
  void UpdateTarget();
  void ResetParameter();
  bool InitialParameter();
  void UpdateState(const nav_msgs::Odometry::ConstPtr& msg);
  void PrintComputeTime();
  geometry_msgs::Twist Compute();
};
