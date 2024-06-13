#include <ros/ros.h>
#include <apriltag_msgs/ApriltagPoseStamped.h>
#include <geometry_msgs/PoseStamped.h>

using namespace std;

double button_detection_distance_=0.5;
ros::Publisher apriltag_poses_pub_;

void get_parameters(ros::NodeHandle n_private)
{
  n_private.param<double>("button_detection_distance", button_detection_distance_, 0.5);
}

void tagsPoseCallback(const apriltag_msgs::ApriltagPoseStampedConstPtr& msg)
{
    if(msg->apriltags.size() == 0) return;

    geometry_msgs::PoseStamped Apriltag_msg;
    int apriltag_index[2]={-1,-1};
    int apriltag_count=0;
    int apriltag_choose=0;
    double apriltag_dis=0;


    for(int i=0;i<msg->apriltags.size();i++)
    {
        int apriltag_index_buffer=msg->apriltags[i].id;
        if(apriltag_index_buffer==0 || apriltag_index_buffer==1)
        {
            apriltag_index[apriltag_index_buffer]=i;
            apriltag_dis+=msg->posearray.poses[i].position.z;
            apriltag_count++;
        }
    }
    if(apriltag_count==0)return;
    else if(apriltag_count==1)apriltag_choose=0;
    else if(apriltag_count>=2)
    {
        apriltag_dis/=apriltag_count;
        apriltag_choose=apriltag_index[apriltag_dis<button_detection_distance_];
    }

    // cout<< apriltag_dis<< "   "<<msg->apriltags[apriltag_choose].id << endl;

    Apriltag_msg.header.stamp = ros::Time::now();
    Apriltag_msg.header.frame_id = msg->header.frame_id;

    // Apriltag_msg.apriltags.push_back(msg->apriltags[apriltag_choose]);
    Apriltag_msg.pose=msg->posearray.poses[apriltag_choose];

    apriltag_poses_pub_.publish(Apriltag_msg);
    return;
}

int main(int argc, char* argv[])
{
    ros::init(argc, argv, "test_apriltag_yz_table_pbvs");
    ros::NodeHandle nh;
    ros::NodeHandle nh_private("~");
    get_parameters(nh_private);

    ros::Subscriber tags_pose_sub = nh.subscribe("ds435i/apriltag_pose_estimator/apriltag_poses", 10, tagsPoseCallback);

    apriltag_poses_pub_ = nh.advertise<geometry_msgs::PoseStamped>("/button_pose", 50);
    ros::spin();
    return 0;
}