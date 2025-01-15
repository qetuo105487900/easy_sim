#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <geometry_msgs/Point.h>

int main(int argc, char** argv) {
    ros::init(argc, argv, "robot_visualization");
    ros::NodeHandle nh;

    // 設定 Marker 發佈者
    ros::Publisher marker_pub = nh.advertise<visualization_msgs::Marker>("robot_marker", 10);

    // 初始化矩形框的 Marker 消息
    visualization_msgs::Marker marker;
    marker.header.frame_id = "turtle1";  // 基於 base_link 座標系
    marker.header.stamp = ros::Time::now();
    marker.ns = "robot";
    marker.id = 0;
    marker.type = visualization_msgs::Marker::LINE_STRIP;  // 使用線條連接形成矩形框
    marker.action = visualization_msgs::Marker::ADD;
    marker.scale.x = 0.05;  // 線條寬度
    marker.color.r = 1.0;
    marker.color.g = 0.0;
    marker.color.b = 0.0;
    marker.color.a = 1.0;  // 設定顏色為紅色，完全不透明

    // 定義矩形四個角點（基於 base_link 的相對位置）
    geometry_msgs::Point p1, p2, p3, p4;

    // 左上角
    p1.x = 0.3;  // 往前 0.3 公尺
    p1.y = 0.35; // 往左 0.35 公尺
    p1.z = 0.0;

    // 右上角
    p2.x = 0.3;  // 往前 0.3 公尺
    p2.y = -0.35; // 往右 0.35 公尺
    p2.z = 0.0;

    // 右下角
    p3.x = -0.6;  // 往後 0.6 公尺
    p3.y = -0.35; // 往右 0.35 公尺
    p3.z = 0.0;

    // 左下角
    p4.x = -0.6;  // 往後 0.6 公尺
    p4.y = 0.35;  // 往左 0.35 公尺
    p4.z = 0.0;

    // 將角點按順序加入到 marker 的點集合中，形成矩形
    marker.points.push_back(p1);
    marker.points.push_back(p2);
    marker.points.push_back(p3);
    marker.points.push_back(p4);
    marker.points.push_back(p1); // 關閉矩形框，返回到起始點

    // 新增箭頭標記顯示朝向
    visualization_msgs::Marker arrow_marker;
    arrow_marker.header.frame_id = "turtle1";
    arrow_marker.header.stamp = ros::Time::now();
    arrow_marker.ns = "robot_orientation";
    arrow_marker.id = 1;
    arrow_marker.type = visualization_msgs::Marker::ARROW;
    arrow_marker.action = visualization_msgs::Marker::ADD;
    arrow_marker.scale.x = 0.1;  // 箭頭的長度
    arrow_marker.scale.y = 0.3; // 箭頭的寬度
    arrow_marker.scale.z = 0.1;
    arrow_marker.color.r = 1.0;
    arrow_marker.color.g = 0.0;
    arrow_marker.color.b = 0.0;
    arrow_marker.color.a = 1.0;  // 設定顏色為綠色，完全不透明

    // 設定箭頭的起點和終點
    geometry_msgs::Point arrow_start, arrow_end;
    arrow_start.x = 0.0;
    arrow_start.y = 0.0;
    arrow_start.z = 0.0;

    arrow_end.x = 0.3;  // 箭頭方向與 x 軸方向一致
    arrow_end.y = 0.0;
    arrow_end.z = 0.0;

    arrow_marker.points.push_back(arrow_start);
    arrow_marker.points.push_back(arrow_end);

    ros::Rate rate(10);
    while (ros::ok()) {
        marker.header.stamp = ros::Time::now();      // 更新時間戳
        arrow_marker.header.stamp = ros::Time::now(); // 更新時間戳

        marker_pub.publish(marker);        // 發佈矩形框
        marker_pub.publish(arrow_marker);  // 發佈箭頭標記

        rate.sleep();
    }

    return 0;
}
