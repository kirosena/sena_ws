#include <ros/ros.h>
#include <geometry_msgs/Pose2D.h>
#include <sensor_msgs/JointState.h>
#include <sena_msgs/KinematicsForward.h>
#include <sena_msgs/Velocity.h>

long double duration, r;
double rotX, rotY, rotZ;
int i;

ros::ServiceClient kinematicsForwardMobile;
ros::ServiceClient kinematicsForwardWorld;
geometry_msgs::Pose2D pose;
geometry_msgs::Pose2D poseMobile;
geometry_msgs::Pose2D poseWorld;

ros::Publisher pubMobile;
ros::Publisher pubWorld;
sena_msgs::KinematicsForward service;

ros::Time t_current;
ros::Time t_previous;

void encoderMsg(const sena_msgs::Velocity::ConstPtr &input){
    service.request.input.v_left = input->v_left * r;
    service.request.input.v_right = input->v_right * r;
    service.request.input.v_back = input->v_back * r;

    t_current = ros::Time::now();
    duration = (t_current - t_previous).toSec();
    t_previous = t_current;
    
    kinematicsForwardWorld.call(service);
    poseWorld.x = (service.response.output.x * duration) + poseWorld.x;
    poseWorld.y = (service.response.output.y * duration) + poseWorld.y;
    poseWorld.theta = (service.response.output.theta * duration) + poseWorld.theta;
    if ((!std::isnan(poseWorld.x)) && (!std::isnan(poseWorld.y)) && (!std::isnan(poseWorld.theta))){
        pubWorld.publish(poseWorld);
        poseWorld.x = poseWorld.x;
        poseWorld.y = poseWorld.y;
        poseWorld.theta = poseWorld.theta;
    }

    kinematicsForwardMobile.call(service);
    poseWorld.x = (service.response.output.x * duration) + poseMobile.x;
    poseWorld.y = (service.response.output.y * duration) + poseMobile.y;
    poseWorld.theta = (service.response.output.theta * duration) + poseMobile.theta;
    if ((!std::isnan(poseWorld.x)) && (!std::isnan(poseWorld.y)) && (!std::isnan(poseWorld.theta))){
        pubMobile.publish(poseMobile);
        poseMobile.x = poseMobile.x;
        poseMobile.y = poseMobile.y;
        poseMobile.theta = poseMobile.theta;
    }
}

int main(int argc, char **argv){
    ros::init(argc, argv, "odom");
    ros::NodeHandle nh;

    while(!ros::Time::waitForValid()){
        double parameter;
        if (!nh.getParam("parameter/wheel/radius", parameter)){
            ROS_ERROR("Tidak mendapatkan parameter radius roda dari parameter server.");
            return -1;
        }
        r = parameter;
        if (!nh.getParam("parameter/initial/x", parameter)){
            parameter = 0;
        }
        poseMobile.x = poseWorld.x = parameter;
        if (!nh.getParam("parameter/initial/y", parameter)){
            parameter = 0;
        }
        poseMobile.theta = poseWorld.theta = parameter;
        if (!nh.getParam("parameter/initial/theta", parameter)){
            parameter = 0;
        }
        poseMobile.theta = poseWorld.theta = parameter;
    }
    ros::Subscriber subs;
    subs = nh.subscribe("sensor/wheel_velocity", 1, encoderMsg);
    kinematicsForwardMobile = nh.serviceClient<sena_msgs::KinematicsForward>("kinematics_forward_mobile");
    kinematicsForwardWorld = nh.serviceClient<sena_msgs::KinematicsForward>("kinematics_forward_world");
    pubMobile = nh.advertise<geometry_msgs::Pose2D>("pose/world", 1);
    pubWorld = nh.advertise<geometry_msgs::Pose2D>("pose/mobile", 1);
    ros::spin();
    return 0;
}


