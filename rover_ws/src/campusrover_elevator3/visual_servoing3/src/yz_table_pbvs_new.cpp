#include <ros/ros.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Twist.h>
#include <std_srvs/SetBool.h>
#include <std_msgs/Int16.h>
#include <campusrover_msgs/ArmTablePoseStatus.h>

#include <visp3/core/vpXmlParserCamera.h>
#include <visp3/core/vpSerial.h>
#include <visp3/detection/vpDetectorAprilTag.h>
#include <visp3/gui/vpDisplayX.h>
#include <visp3/sensor/vpV4l2Grabber.h>
#include <visp3/io/vpImageIo.h>
#include <visp3/visual_features/vpFeaturePoint3D.h>
#include <visp3/vs/vpServo.h>
#include <visp3/robot/vpUnicycle.h>

using namespace std;

ros::Publisher table_move_pub_, base_move_pub_ ;
ros::Subscriber TablePoseSub, VSGoalSub, ElevatorCallerModeSub ;
ros::ServiceServer yztable_service ;

std::string TransformFrameId = "rs_d435i_color_optical_frame";
double X = 0, Y = 0, Z = 0;
double offset_x_,offset_y_,offset_z_,base_vel_scale_;
double error_thershold_ = 0.05;
vpServo task;
vpFeaturePoint3D S_YZ, S_YZ_d;
bool yz_table_enable_;
int mode_ = 0;
float table_y, table_z ;
double y_max_, z_max_ ;

void get_parameters(ros::NodeHandle n_private)
{
  n_private.param<double>("y_max", y_max_, 0.32);    
  n_private.param<double>("z_max", z_max_, 0.55);     
  n_private.param<double>("offset_x", offset_x_, 0);
  n_private.param<double>("offset_y", offset_y_, 0);
  n_private.param<double>("offset_z", offset_z_, 0.2);
  n_private.param<double>("base_vel_scale", base_vel_scale_, 0.8);
  n_private.param<double>("error_thershold", error_thershold_, 0.05);
  n_private.param<bool>("yz_table_enable", yz_table_enable_, false);
  n_private.param<std::string>("frame_id", TransformFrameId, "rs_d435i_color_optical_frame");

}

void pbvs_init()
{
    vpAdaptiveGain lambda;
    lambda.initStandard(2.5, 0.4, 30);

    task.setServo(vpServo::EYEINHAND_L_cVe_eJe);
    task.setInteractionMatrixType(vpServo::CURRENT, vpServo::PSEUDO_INVERSE);
    task.setLambda(lambda);
    
    vpRotationMatrix cRe;
    cRe[0][0] = 0; cRe[0][1] = -1; cRe[0][2] =  0;
    cRe[1][0] = 0; cRe[1][1] =  0; cRe[1][2] = -1;
    cRe[2][0] = 1; cRe[2][1] =  0; cRe[2][2] =  0;

    vpHomogeneousMatrix cMe(vpTranslationVector(), cRe);
    vpVelocityTwistMatrix cVe(cMe);
    task.set_cVe(cVe);
    
    // vpMatrix eJe(6, 2, 0);
    // eJe[1][0] = eJe[2][1]  = 1.0;
    vpMatrix eJe(6, 3, 0);
    eJe[0][0] = eJe[1][1] = eJe[2][2]  = 1.0;
 
    //std::cout << "eJe: \n" << eJe << std::endl;
    task.set_eJe(eJe);

    // Desired distance to the target
    double Z_d = 0.22;
    double X = 0, Y = 0, Z = Z_d;

    // Create Point 3D X, Z coordinates visual features
    S_YZ.buildFrom(X, Y, Z);
    S_YZ_d.buildFrom(offset_x_, offset_y_, offset_z_);  // The value of s*  right button is x+ y+

    // Add the features
    task.addFeature(S_YZ, S_YZ_d, vpFeaturePoint3D::selectX() | vpFeaturePoint3D::selectY() | vpFeaturePoint3D::selectZ());
}

void VSGoalCallback(const geometry_msgs::PoseStampedConstPtr& msg)
{
    static tf2_ros::Buffer tfBuffer;
    static tf2_ros::TransformListener tfListener(tfBuffer);
    geometry_msgs::TransformStamped transform;
    geometry_msgs::PoseStamped after_pose;
    static double last_error_x, last_error_y, last_error_z;
    static double last_error_x_l, last_error_y_l, last_error_z_l;
    static double last_error_x_r, last_error_y_r, last_error_z_r;        
    static geometry_msgs::Twist table_vel, base_vel;

    if(!yz_table_enable_)
    {
        last_error_x = 0;       last_error_y = 0;       last_error_z = 0;
        last_error_x_l = 0;     last_error_y_l = 0;     last_error_z_l = 0;
        last_error_x_r = 0;     last_error_y_r = 0;     last_error_z_r = 0;
        base_vel.linear.x = 0;
        table_vel.linear.y = 0;
        table_vel.linear.z = 0;
        return;
    }
    
    if (msg->header.frame_id != TransformFrameId)
    {
        try
        {
            transform = tfBuffer.lookupTransform(TransformFrameId, msg->header.frame_id, ros::Time::now(), ros::Duration(1.0) );
            tf2::doTransform(*msg, after_pose, transform);
        }
        catch (tf2::TransformException &ex)
        {
            ROS_WARN("[Visual Servoing] Pose transform : %s", ex.what());
            ros::Duration(0.5).sleep();
            return;
        }
    }
    else
    {
        after_pose = *msg;
    }


    X=after_pose.pose.position.x;
    Y=after_pose.pose.position.y;
    Z=after_pose.pose.position.z;


    S_YZ.set_XYZ(X, Y, Z);

    // Compute the control law. Velocities are computed in the mobile robot reference frame
    vpColVector v = task.computeControlLaw(); // v[0] x, v[1] y, v[2] z
    double error = std::sqrt((task.getError()).sumSquare());
    double error_x = task.getError()[2];  
    double error_y = task.getError()[0];
    double error_z = task.getError()[1];

    if (mode_ == 4)//panel_MPCVS
    {
        if (table_z > 0.0 && table_z < z_max_)
        {
            if (std::abs(error_z) > error_thershold_)
            {
                table_vel.linear.z = v[2];
            }        
            else
            {
                table_vel.linear.z = 0;
            }     
        }
        else
        {
            table_vel.linear.z = 0;
        }
    }

    else if (mode_ == 3)//VS
    {
        if (std::abs(error_x) > error_thershold_)
        {   
            base_vel.linear.x = base_vel_scale_*v[0];
        }
        else 
        {
            base_vel.linear.x = 0;
        }


        if (table_y > 0.0 && table_y < y_max_)
        {
            if (std::abs(error_y) > error_thershold_)
            {
                table_vel.linear.y = v[1];
            }        
            else
            {
                table_vel.linear.y = 0;
            }     
        }
        else
        {
            table_vel.linear.y = 0;
        }

        if (table_z > 0.0 && table_z < z_max_)
        {
            if (std::abs(error_z) > error_thershold_)
            {
                table_vel.linear.z = v[2];
            }        
            else
            {
                table_vel.linear.z = 0;
            }     
        }
        else
        {
            table_vel.linear.z = 0;
        }

        last_error_x = error_x;
        last_error_y = error_y;
        last_error_z = error_z;
    }

    else if (mode_ == 31)//VS_R
    {
        if (std::abs(error_y) > error_thershold_)
        {
            base_vel.linear.x = base_vel_scale_* v[1];
        }
        else 
        {
            base_vel.linear.x = 0;
        }

        if (table_y > 0.0 && table_y < y_max_)
        {
            if (std::abs(error_x) > error_thershold_)
            {
                table_vel.linear.y = -v[0];
            }        
            else
            {
                table_vel.linear.y = 0;
            }     
        }
        else
        {
            table_vel.linear.y = 0;
        }

        if (table_z > 0.0 && table_z < z_max_)
        {
            if (std::abs(error_z) > error_thershold_)
            {
                table_vel.linear.z = v[2];
            }        
            else
            {
                table_vel.linear.z = 0;
            }     
        }
        else
        {
            table_vel.linear.z = 0;
        }

        last_error_x_r = error_x;
        last_error_y_r = error_y;
        last_error_z_r = error_z;
    }

    else if (mode_ == 32)//VS_L
    {
        
        if (std::abs(error_y) > error_thershold_)
        {
            base_vel.linear.x = base_vel_scale_* (-v[1]);
        }
        else 
        {
            base_vel.linear.x = 0;
        }

        if (table_y > 0.0 && table_y < y_max_)
        {
            if (std::abs(error_x) > error_thershold_)
            {
                table_vel.linear.y = v[0];
            }        
            else
            {
                table_vel.linear.y = 0;
            }     
        }
        else
        {
            table_vel.linear.y = 0;
        }

        if (table_z > 0.0 && table_z < z_max_)
        {
            if (std::abs(error_z) > error_thershold_)
            {
                table_vel.linear.z = v[2];
            }        
            else
            {
                table_vel.linear.z = 0;
            }     
        }
        else
        {
            table_vel.linear.z = 0;
        }

        last_error_x_l = error_x;
        last_error_y_l = error_y;
        last_error_z_l = error_z;
    }    

    else if (mode_ == 6) //ARM
    {
        base_vel.linear.x = 0;
        table_vel.linear.z = 0;
        table_vel.linear.y = 0;
    }

    if (mode_ == 4)
    {
        table_move_pub_.publish(table_vel);
    }
    else if( (mode_ == 3 || mode_ == 31 || mode_ == 32) || (mode_ == 6) )
    {
        table_move_pub_.publish(table_vel);
        base_move_pub_.publish(base_vel);
    }
}

void TablePoseCallback(const campusrover_msgs::ArmTablePoseStatus& msg)
{
    table_y = msg.position.y;
    table_z = msg.position.z;
}

void ElevatorCallerModeCallback(const std_msgs::Int16& mode)
{
    mode_ = mode.data;
}

bool yztable_ServiceCallback(std_srvs::SetBool::Request  &req, std_srvs::SetBool::Response &res)
{
    yz_table_enable_=req.data;
    ROS_INFO("[Visual Servoing] Service : recieved enable signel %s", req.data ? "True" : "False");

    return true;
}

int main(int argc, char* argv[])
{
    ros::init(argc, argv, "yz_table_pbvs");
    ros::NodeHandle nh;
    ros::NodeHandle nh_private("~");
    get_parameters(nh_private);

    ros::Subscriber TablePoseSub = nh.subscribe("/table_pose", 1, TablePoseCallback); 
    ros::Subscriber VSGoalSub = nh.subscribe("/vs_goal", 1, VSGoalCallback);
    ros::Subscriber ElevatorCallerModeSub = nh.subscribe("/elevator_caller_mode", 1, ElevatorCallerModeCallback);
    
    table_move_pub_ = nh.advertise<geometry_msgs::Twist>("/stepper_speed", 50);
    base_move_pub_ = nh.advertise<geometry_msgs::Twist>("/input/nav_cmd_vel", 50);

    ros::ServiceServer yztable_service = nh.advertiseService("/enable_vs", yztable_ServiceCallback);
    pbvs_init();

    ros::spin();
    return 0;

}
