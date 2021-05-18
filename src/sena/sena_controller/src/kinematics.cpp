#include <cmath>
#include <string>

#include <ros/ros.h>
#include <geometry_msgs/Pose2D.h>
#include <sensor_msgs/JointState.h>

#include <sena_msgs/FrameToFrame.h>
#include <sena_msgs/KinematicsForward.h>
#include <sena_msgs/KinematicsInverse.h>

// long double L;
// long double L3;

long double theta = 0;

bool forwardMobile(sena_msgs::KinematicsForward::Request &req, sena_msgs::KinematicsForward::Response &res){
    res.output.x = ((2.0 * req.input.v_back) - req.input.v_left - req.input.v_right) / 3.0;
    res.output.y = ((std::sqrt(3) * req.input.v_right) - (std::sqrt(3) * req.input.v_left)) / 3.0;
    res.output.theta = (req.input.v_left + req.input.v_back + req.input.v_right) / 3.0;
    return true;
}

void senaToWorldCore(double Vxm, double Vym, double &Vxw, double &Vyw){
    Vxw = (std::cos(theta) * Vxm) - (std::sin(theta) * Vym);
    Vyw = (std::sin(theta) * Vxm) + (std::cos(theta) * Vym); 
}

bool senaToWorld(sena_msgs::FrameToFrame::Request &request, sena_msgs::FrameToFrame::Response &response){
    senaToWorldCore(request.input.x, request.input.y, response.output.x, response.output.y);
}

void senaToMobileCore(double Vxm, double Vym, double &Vxw, double &Vyw){
    Vxm = (std::cos(theta) * Vxw) + (std::sin(theta) * Vyw);
    Vym = - (std::sin(theta) * Vxw) + (std::cos(theta) * Vyw);
}

bool senaToMobile(sena_msgs::FrameToFrame::Request &request, sena_msgs::FrameToFrame::Response &response){
    senaToMobileCore(request.input.x, request.input.y, response.output.x, response.output.y);
}

bool inverseMobile(sena_msgs::KinematicsInverse::Request &req, sena_msgs::KinematicsInverse::Response &res){
    long double Vm_x2 = - req.input.x / 2.0;
    long double sqrt3Vm_y2 = (std::sqrt(3) * req.input.y) / 2.0;
    long double Lomega_p = req.input.theta;
    res.output.v_left = Vm_x2 - sqrt3Vm_y2 + Lomega_p;
    res.output.v_right = Vm_x2 + sqrt3Vm_y2 + Lomega_p;
    res.output.v_back = req.input.x + Lomega_p;
    return true;
}

void onPoseWorldMsg(const geometry_msgs::Pose2D::ConstPtr &input){
    theta = input->theta;
}

int main(int argc, char **argv){
    ros::init(argc, argv, "kinematics");
    ros::NodeHandle nh;
    {
        double parameter;
        if (!nh.getParam("parameter/initial/theta", parameter)){
            parameter = 0;
        }
        theta = parameter;
    }
    ros::Subscriber subs = nh.subscribe("pose/world",1, onPoseWorldMsg);
    ros::spin();
    return 0;
}