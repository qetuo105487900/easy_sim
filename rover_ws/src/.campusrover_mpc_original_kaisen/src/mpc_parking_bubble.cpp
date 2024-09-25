#include <iostream>

#include "mpc_parking_bubble.hpp"

mpcParkingBubble::mpcParkingBubble(/* args */)
{
  capsule_ = campusrover_model_acados_create_capsule();
  status_ = campusrover_model_acados_create(capsule_);
  if (status_)
  {
      std::cout << "campusrover_model_acados_create() returned status " 
                << status_ 
                << ". Exiting." << std::endl;
      exit(1);
  }
  std::cout << "campusrover_model_acados_create model is created" << std::endl;
  nlp_config_ = campusrover_model_acados_get_nlp_config(capsule_);
  nlp_dims_ = campusrover_model_acados_get_nlp_dims(capsule_);
  nlp_in_ = campusrover_model_acados_get_nlp_in(capsule_);
  nlp_out_ = campusrover_model_acados_get_nlp_out(capsule_);

  N_ = nlp_dims_->N;
  nx_ = *nlp_dims_->nx;
  nu_ = *nlp_dims_->nu;
  np_ = capsule_->nlp_np;
  std::cout << "time horizon is " << N_ 
            << ", with state " << nx_
            << " and input " << nu_
            << " and parameter " << np_  << std::endl;
  acados_in_.x0 = std::make_unique<std::vector<double> >(nx_);
}

mpcParkingBubble::~mpcParkingBubble()
{
}

bool mpcParkingBubble::GetConstrainBubble(std::vector<double> &bubble,std::vector<double> &obstacle, const std::vector<double> &current_state, const nav_msgs::Path &bubbles)
{
  double inx=0, b_inside_inx=-1, b_closet_idx=-1;
  double x = current_state.at(0);
  double y = current_state.at(1);
  double dis_inside_bubble, dis_closet_bubble=999;
  for(auto bubble : bubbles.poses)
  {
    double h = bubble.pose.position.x;
    double k = bubble.pose.position.y;
    double r = bubble.pose.position.z;
    if(std::pow(x - h,2) + std::pow(y - k,2) < std::pow(r,2) )
    {
      dis_inside_bubble = std::pow(x - h,2) + std::pow(y - k,2) - std::pow(r,2);
      b_inside_inx = inx;
    }
    if(std::sqrt(std::pow(x - h,2) + std::pow(y - k,2)) < dis_closet_bubble)
    {
      dis_closet_bubble = std::sqrt(std::pow(x - h,2) + std::pow(y - k,2));
      b_closet_idx = inx;
    }
    inx+=1;
  }
  // std::cout << "bubble : " << b_inside_inx  << "\tdis : " << dis_inside_bubble<< std::endl;
  if(b_inside_inx != -1)
  {
    std::vector<double> bubble_vector({bubbles.poses.at(b_inside_inx).pose.position.x, bubbles.poses.at(b_inside_inx).pose.position.y, bubbles.poses.at(b_inside_inx).pose.position.z, b_inside_inx});
    bubble = bubble_vector;
    if(bubbles.poses.at(b_inside_inx).pose.orientation.x == 0)
    {
      std::vector<double> obstacle_vector({current_state.at(0),current_state.at(1)+5});
      obstacle = obstacle_vector;
    }
    else
    {
      std::vector<double> obstacle_vector({bubbles.poses.at(b_inside_inx).pose.orientation.x,bubbles.poses.at(b_inside_inx).pose.orientation.y});
      obstacle = obstacle_vector;
    }

    return true;
  }
  else
  {
    std::vector<double> bubble_vector({bubbles.poses.at(b_closet_idx).pose.position.x, bubbles.poses.at(b_closet_idx).pose.position.y, bubbles.poses.at(b_closet_idx).pose.position.z, b_closet_idx});
    bubble = bubble_vector;
    if(bubbles.poses.at(b_closet_idx).pose.orientation.x == 0)
    {
      std::vector<double> obstacle_vector({current_state.at(0),current_state.at(1)+5});
      obstacle = obstacle_vector;
    }
    else
    {
      std::vector<double> obstacle_vector({bubbles.poses.at(b_closet_idx).pose.orientation.x,bubbles.poses.at(b_closet_idx).pose.orientation.y});
      obstacle = obstacle_vector;
    }
    return false;
  }
}

std::vector<std::vector<double>> mpcParkingBubble::GetDenseWaypointsWithAngle(const nav_msgs::Path &bubbles)
{
  std::vector<std::vector<double>> ref_path;

  if(bubbles.poses.size() == 0)
    return ref_path;

  // std::cout << "startaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"<< std::endl; 

  // std::cout << "back_y : " << bubbles.poses.back().pose.position.y << std::endl;  
  // std::cout << "front_y : " << bubbles.poses.front().pose.position.y << std::endl;
  // std::cout << "y : " << bubbles.poses.back().pose.position.y - bubbles.poses.front().pose.position.y << std::endl;
  // std::cout << "back_x : " << bubbles.poses.back().pose.position.x << std::endl;  
  // std::cout << "front_x : " << bubbles.poses.front().pose.position.x << std::endl;
  // std::cout << "x : " << bubbles.poses.back().pose.position.x - bubbles.poses.front().pose.position.x << std::endl;  
  
  double th_from_begin_to_end = atan2(bubbles.poses.back().pose.position.y - bubbles.poses.front().pose.position.y,bubbles.poses.back().pose.position.x - bubbles.poses.front().pose.position.x);
  tf::Quaternion firstbubble( 0,
                              0,
                              bubbles.poses.front().pose.orientation.z,
                              bubbles.poses.front().pose.orientation.w);
  tf::Quaternion finalbubble(0,
                              0,
                              bubbles.poses.back().pose.orientation.z,
                              bubbles.poses.back().pose.orientation.w);

    
  // std::cout << "th_from_begin_to_end" << th_from_begin_to_end << std::endl;   
  // std::cout << "front_yaw" << tf::getYaw(firstbubble) << std::endl;                            
  // std::cout << "back_yaw" << tf::getYaw(finalbubble) << std::endl;    
  // std::cout << "end aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"<< std::endl;   

  bool inverse = false;
  if(abs(tf::getYaw(firstbubble) - th_from_begin_to_end) > 1.57 && abs(tf::getYaw(finalbubble) - th_from_begin_to_end) > 1.57)
  {
    // std::cout << "inverseinverseinverseinverseinverseinverseinverse"<< std::endl;   
    inverse = true;
  }

  if(bubbles.poses.size() > 1)
  {
    for(int i = 0; i < bubbles.poses.size()-1; i++)
    {
      geometry_msgs::PoseStamped pt = bubbles.poses[i];
      geometry_msgs::PoseStamped pt1 = bubbles.poses[i+1];
      int n = int(std::sqrt( std::pow(pt1.pose.position.x - pt.pose.position.x,2) + std::pow(pt1.pose.position.y - pt.pose.position.y,2) ) / 0.1) ;
      double th = atan2(pt1.pose.position.y - pt.pose.position.y,pt1.pose.position.x - pt.pose.position.x);
      if(inverse)
      {
        th = atan2(pt.pose.position.y - pt1.pose.position.y,pt.pose.position.x - pt1.pose.position.x);
      }
      
      double s_x = (pt1.pose.position.x - pt.pose.position.x)/n; //step_x
      double s_y = (pt1.pose.position.y - pt.pose.position.y)/n; //step_y
      double c_x = pt.pose.position.x; //current_x
      double c_y = pt.pose.position.y; //current_y
      if(i==0)
      {
        std::vector<double> pose({c_x,c_y,th});
        ref_path.push_back(pose);
      }
      for (int j=0 ; j<n-1 ; j++)
      {
        if(i+1 != bubbles.poses.size()-1 || j != n-1)
        {
          c_x+=s_x;
          c_y+=s_y;
          std::vector<double> pose({c_x,c_y,th});
          ref_path.push_back(pose);
        }
      }
    }

  }
  
  //last pose need follow the bubble
  double roll, pitch, yaw;
  tf::Matrix3x3 m(tf::Quaternion(0,
                                0,
                                bubbles.poses[bubbles.poses.size()-1].pose.orientation.z,
                                bubbles.poses[bubbles.poses.size()-1].pose.orientation.w));
  m.getRPY(roll, pitch, yaw);
  std::vector<double> pose({bubbles.poses[bubbles.poses.size()-1].pose.position.x,bubbles.poses[bubbles.poses.size()-1].pose.position.y, yaw});
  ref_path.push_back(pose);
  // std::cout << "dense:" << bubbles.poses.size() << "\t" <<ref_path.size() << std::endl;

  return ref_path;
}

std::vector<double> mpcParkingBubble::GetGuidePoint(const std::vector<double> &current_state, const std::vector<std::vector<double>> &ref_path, int ref_len)
{
  double dis_mini = 10000;
  int dis_mini_inx = -1,inx = 0;
  int ref_pt_offset = 1;
  int final_inx = ref_path.size()-1;

    //for step 1
    // inx = ref_path.size()-1;
    // std::vector<double> param({ref_path[inx][0],ref_path[inx][1],ref_path[inx][2],ref_path[inx][0],ref_path[inx][1],ref_path[inx][2]});
    // return param;

  for(auto pose : ref_path)
  {
    double dis =  std::pow(current_state[0] - pose[0],2) + std::pow(current_state[1] - pose[1],2) ;
    if(dis < dis_mini)
    {
      dis_mini = dis;
      dis_mini_inx = inx;
    }
    inx++;
  }
  // std::cout << "guide:" << dis_mini_inx << "\t" << ref_path.size() << std::endl;
  if(dis_mini_inx<0)
  {
    std::vector<double> param({ref_path[final_inx][0],ref_path[final_inx][1],ref_path[final_inx][2],ref_path[final_inx][0],ref_path[final_inx][1],ref_path[final_inx][2]});
    // std::cout <<"size: " << ref_path.size() << "ref:" << inx << "\t" << "way:" << inx << std::endl;
    return param;
  }
  else
  {
    int ref_id,way_id;
    if(dis_mini_inx+ref_pt_offset+5 > final_inx)
    {
      ref_id = final_inx;
    }
    else
    {
      ref_id = dis_mini_inx+ref_pt_offset;
    }

    if(dis_mini_inx+ref_len > final_inx)
    {
      way_id = final_inx;
    }
    else
    {
      way_id = dis_mini_inx+ref_len;
    }

    std::vector<double> param({ref_path[ref_id][0],ref_path[ref_id][1],ref_path[ref_id][2],ref_path[way_id][0],ref_path[way_id][1],ref_path[way_id][2]});
    // std::cout << "size: " << ref_path.size() <<"\tref:" << dis_mini_inx << "\tway:" << dis_mini_inx+ref_len << std::endl;
    return param;
  }

}
void mpcParkingBubble::GetParameter(int &bubble_idx, geometry_msgs::Pose &ref_pose, geometry_msgs::Pose &way_pose, const geometry_msgs::PoseStamped &odom_pose, const nav_msgs::Path &bubbles)
{

  std::vector<double> bubble(4),obstacle(2), current_state({odom_pose.pose.position.x,odom_pose.pose.position.y});
  GetConstrainBubble(bubble, obstacle, current_state, bubbles);
  bubble_idx = int(bubble[3]);

  std::vector<std::vector<double>> ref_path;
  ref_path = GetDenseWaypointsWithAngle(bubbles);
  std::vector<double> ref_param(6);
  ref_param = GetGuidePoint(current_state, ref_path);

  tf2::Quaternion myQuaternion;
  ref_pose.position.x = ref_param[0];
  ref_pose.position.y = ref_param[1];
  myQuaternion.setRPY(0, 0, ref_param[2]);
  ref_pose.orientation.z = myQuaternion.getZ();
  ref_pose.orientation.w = myQuaternion.getW();

  way_pose.position.x = ref_param[3];
  way_pose.position.y = ref_param[4];
  myQuaternion.setRPY(0, 0, ref_param[5]);
  way_pose.orientation.z = myQuaternion.getZ();
  way_pose.orientation.w = myQuaternion.getW();


}
nav_msgs::Path mpcParkingBubble::UpdateBubbles(const nav_msgs::Path &bubbles)
{
  bubbles_ = bubbles;
  ref_path_ = GetDenseWaypointsWithAngle(bubbles_);
  return bubbles_;
}
void mpcParkingBubble::UpdateTarget()
{

}

void mpcParkingBubble::UpdateState(const nav_msgs::Odometry::ConstPtr& msg)
{
  odom_pose_.header = msg->header;
  odom_pose_.child_frame_id = msg->child_frame_id;
  odom_pose_.pose = msg->pose;
  odom_pose_.twist = msg->twist;


  tf::Quaternion q_odom_pose(odom_pose_.pose.pose.orientation.x,
                                odom_pose_.pose.pose.orientation.y,
                                odom_pose_.pose.pose.orientation.z,
                                odom_pose_.pose.pose.orientation.w);

  x_current_[0] = msg->pose.pose.position.x;
  x_current_[1] = msg->pose.pose.position.y;
  x_current_[2] = tf::getYaw(q_odom_pose);
  x_current_[3] = msg->twist.twist.linear.x;
  x_current_[4] = msg->twist.twist.angular.z;



}

bool mpcParkingBubble::InitialParameter()
{
  tf::Quaternion q_odom_pose(odom_pose_.pose.pose.orientation.x,
                                odom_pose_.pose.pose.orientation.y,
                                odom_pose_.pose.pose.orientation.z,
                                odom_pose_.pose.pose.orientation.w);
  x_current_[0] = odom_pose_.pose.pose.position.x;
  x_current_[1] = odom_pose_.pose.pose.position.y;
  x_current_[2] = tf::getYaw(q_odom_pose);
  x_current_[3] = odom_pose_.twist.twist.linear.x;
  x_current_[4] = odom_pose_.twist.twist.angular.z;

  std::vector<double> bubble(3), obstacle(2);
  std::vector<double> ref_param(6);
  std::vector<double> x_current_state({x_current_[0],x_current_[1],x_current_[2],x_current_[3],x_current_[4],x_current_[5],x_current_[6]});
  GetConstrainBubble(bubble, obstacle, x_current_state, bubbles_);
  ref_param = GetGuidePoint(x_current_state, ref_path_);
  param_[0] = bubble[0];
  param_[1] = bubble[1];
  param_[2] = bubble[2];
  param_[3] = ref_param[0];
  param_[4] = ref_param[1];
  param_[5] = ref_param[2];
  param_[6] = ref_param[3];
  param_[7] = ref_param[4];
  param_[8] = ref_param[5];
  param_[9] = (bubble[3]+1) / bubbles_.poses.size();
  param_[10] = obstacle[0];
  param_[11] = obstacle[1];
  // std::cout << "bubble" << param_[0] << "," <<param_[1] << "," << param_[2] << std::endl;
  // std::cout << "red_pt" << param_[3] << "," <<param_[4] << "," << param_[5] << std::endl;
  // std::cout << "way_pt" << param_[6] << "," <<param_[7] << "," << param_[8] << std::endl;
  // std::cout << "progress obstacle:" << param_[9] << "," <<param_[10] << "," << param_[11] << std::endl;

  std::cout << "x,y:" <<x_current_[0] << "," << x_current_[1] << "obstacle(x,y): " << param_[10]<<","<< param_[11]  << std::endl;
  std::cout << "Obstacle constraint : " << pow(0.32, 2) - ( pow(x_current_[0]-param_[10], 2) + pow(x_current_[1]-param_[11], 2) ) << std::endl;
  for (int i=0;i<=N_;i++)
  { 
    ocp_nlp_out_set(nlp_config_, nlp_dims_, nlp_out_, i, "x", x_current_);
    campusrover_model_acados_update_params(capsule_, i, param_, np_);
  }

  ocp_nlp_constraints_model_set(nlp_config_, nlp_dims_, nlp_in_, 0, "lbx", x_current_);
  ocp_nlp_constraints_model_set(nlp_config_, nlp_dims_, nlp_in_, 0, "ubx", x_current_);
  status_ = campusrover_model_acados_solve(capsule_);
  status_ = campusrover_model_acados_solve(capsule_);
  if(status_>2)
  {
    std::cout << "[mpc parking bubble]: Initial failed with id :" << status_ << std::endl;
    return false;
  }

  for (int i=0;i<=N_;i++)
  {
    // std::vector<double> horizon_state_(nx);
    std::vector<double> bubble(4),obstacle(2);
    std::vector<double> ref_param(6);

    ocp_nlp_out_get(nlp_config_, nlp_dims_, nlp_out_, i, "x", &horizon_state_);
    
    std::vector<double> horizon_state({horizon_state_[0],horizon_state_[1],horizon_state_[2],horizon_state_[3],horizon_state_[4],horizon_state_[5],horizon_state_[6]});
    if(GetConstrainBubble(bubble, obstacle, horizon_state, bubbles_))
    {
    }
    else
    {
      std::cout << "Current position is not in any bubble : " << i << std::endl;
    }
    ref_param = GetGuidePoint(horizon_state, ref_path_);

    param_[0] = bubble[0];
    param_[1] = bubble[1];
    param_[2] = bubble[2];
    param_[3] = ref_param[0];
    param_[4] = ref_param[1];
    param_[5] = ref_param[2];
    param_[6] = ref_param[3];
    param_[7] = ref_param[4];
    param_[8] = ref_param[5];
    param_[9] = (bubble[3]+1) / bubbles_.poses.size();
    param_[10] = obstacle[0];
    param_[11] = obstacle[1];

    campusrover_model_acados_update_params(capsule_, i, param_, np_);
  }

  std::cout << "[mpc parking bubble]initial parameter" << std::endl;
  return true;
}

void mpcParkingBubble::ResetParameter()
{
  // reference :  c_generated_code -> acados_solver_campusrover_model.c -> campusrover_model_acados_create_7_set_nlp_out
  double reset_x_current_[nx_] = {0,0,0,0,0,0,0};
  double reset_u_current_[nu_] = {0,0};
  double reset_param[np_] = {0,0,10,0,0,0,0,0,0,0,10,10};
  for (int i=0;i<=N_;i++)
  {
    ocp_nlp_out_set(nlp_config_, nlp_dims_, nlp_out_, i, "x", reset_x_current_);
    ocp_nlp_out_set(nlp_config_, nlp_dims_, nlp_out_, i, "u", reset_u_current_);
    campusrover_model_acados_update_params(capsule_, i, reset_param, np_);

  }
  for(int i=0;i<nx_;i++)
    x_current_[i] = reset_x_current_[i];
  for(int i=0;i<nu_;i++)
    u_current_[i] = reset_u_current_[i];

  compute_time.clear();
  error_n=0;
  std::cout << "[mpc parking bubble]reset parameter" << std::endl;

}

bool mpcParkingBubble::GetMpcPredictPath(nav_msgs::Path &predict_path)
{
  if(mpc_predict_path_.poses.size()==0)
    return false;
  
  mpc_predict_path_.header.stamp = ros::Time();
  predict_path = mpc_predict_path_;
  return true;
}

geometry_msgs::Twist mpcParkingBubble::Compute()
{
  clock_t time_p=clock();
  // std::cout << "compute" << std::endl;
  // std::cout << "x:"<<x_current_[0] << ",y:" << x_current_[1] << ",th:" << x_current_[2] << ",sv:" << x_current_[3] << ",sw:" << x_current_[4] << ",a:" << x_current_[5] << ",alpha:" << x_current_[6]<< std::endl;
  // get current state

  ocp_nlp_constraints_model_set(nlp_config_, nlp_dims_, nlp_in_, 0, "lbx", x_current_);
  ocp_nlp_constraints_model_set(nlp_config_, nlp_dims_, nlp_in_, 0, "ubx", x_current_);

  //solve and get u_current_
  status_ = campusrover_model_acados_solve(capsule_);
  if(status_ > 2)
  {
      // 0 – success
      // 1 – failure
      // 2 – maximum number of iterations reached
      // 3 – minimum step size in QP solver reached
      // 4 – qp solver failed
      std::cout << "error occur : " << status_ << std::endl;
      geometry_msgs::Twist cmd_vel_stop;
      cmd_vel_stop.linear.x = 0;
      cmd_vel_stop.angular.z = 0;
      cmd_vel_stop.linear.z = 87; //error message

      InitialParameter();
      error_n+=1;
      compute_time.push_back(double(clock()-time_p)/CLOCKS_PER_SEC);
      return cmd_vel_stop;
  }
  ocp_nlp_out_get(nlp_config_, nlp_dims_, nlp_out_, 0, "u", &u_current_);

  // get ref s
  // get way by s
  // update parameters
  nav_msgs::Path mpc_predict_path;
  mpc_predict_path.header.frame_id = bubbles_.header.frame_id;
  for (int i=0;i<=N_;i++)
  {
    // std::vector<double> horizon_state_(nx);
    std::vector<double> bubble(4),obstacle(2);
    std::vector<double> ref_param(6);
    geometry_msgs::PoseStamped predict_pose;

    ocp_nlp_out_get(nlp_config_, nlp_dims_, nlp_out_, i, "x", &horizon_state_);

    predict_pose.header.frame_id = bubbles_.header.frame_id;
    predict_pose.pose.position.x = horizon_state_[0];
    predict_pose.pose.position.y = horizon_state_[1];
    tf2::Quaternion myQuaternion;
    myQuaternion.setRPY(0, 0, horizon_state_[2]);
    predict_pose.pose.orientation.z = myQuaternion.getZ();
    predict_pose.pose.orientation.w = myQuaternion.getW();
    mpc_predict_path.poses.push_back(predict_pose);
    

    std::vector<double> horizon_state({horizon_state_[0],horizon_state_[1],horizon_state_[2],horizon_state_[3],horizon_state_[4],horizon_state_[5],horizon_state_[6]});
    if(GetConstrainBubble(bubble, obstacle, horizon_state, bubbles_))
    {
    }
    else
    {
      std::cout << "Current position is not in any bubble : " << i << std::endl;
    }
    ref_param = GetGuidePoint(horizon_state, ref_path_);

    param_[0] = bubble[0];
    param_[1] = bubble[1];
    param_[2] = bubble[2];
    param_[3] = ref_param[0];
    param_[4] = ref_param[1];
    param_[5] = ref_param[2];
    param_[6] = ref_param[3];
    param_[7] = ref_param[4];
    param_[8] = ref_param[5];
    param_[9] = (bubble[3]+1) / bubbles_.poses.size();
    param_[10] = obstacle[0];
    param_[11] = obstacle[1];
    // std::cout << "x,y: : " <<horizon_state_[0] << "," << horizon_state_[1] << "obstacle(x,y): " << param_[10]<<","<< param_[11]  << std::endl;
    // std::cout << "Obstacle constraint : " << pow(0.33, 2) - ( pow(horizon_state_[0]-param_[10], 2) + pow(horizon_state_[1]-param_[11], 2) ) << std::endl;

    campusrover_model_acados_update_params(capsule_, i, param_, np_);
  }

  mpc_predict_path_ = mpc_predict_path;
  // ocp_nlp_out_get(nlp_config_, nlp_dims_, nlp_out_, 1, "x", &x_current_);
  x_current_[5] = (u_current_[0] - x_current_[3])/0.1;
  x_current_[6] = (u_current_[1] - x_current_[4])/0.1;
  geometry_msgs::Twist cmd_vel;
  cmd_vel.linear.x = u_current_[0];
  cmd_vel.angular.z = u_current_[1];
  compute_time.push_back(double(clock()-time_p)/CLOCKS_PER_SEC);
  return cmd_vel;
}

void mpcParkingBubble::PrintComputeTime()
{
  double total_time=0;
  for(auto time_p:compute_time)
  {
    total_time+=time_p;
  }
  std::cout<<"===================================================="<<std::endl;
  std::cout<<"Total compute numbers:"<<compute_time.size()<<std::endl;
  std::cout<<"Total error numbers:"<<error_n<<std::endl;
  std::cout<<"Average compute time:"<<total_time/compute_time.size()<<std::endl;
  std::cout<<"===================================================="<<std::endl;
}