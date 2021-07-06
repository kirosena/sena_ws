#include <ros.h>
#include <geometry_msgs/Twist.h>
#include <rospy_tutorials/Floats.h>

//MOTOR1
#define RPWM1 11
#define LPWM1 10

//MOTOR2
#define RPWM2 9
#define LPWM2 6

//MOTOR3
#define RPWM3 5
#define LPWM3 3

float Vm_x, Vm_y, Vm_z;
float V1, V2, V3;

ros::NodeHandle nh;


//publish to each motor motor1_Cb, motor2_Cb, motor3_Cb
void motor1_Cb(const geometry_msgs::Twist& msg) {
  Vm_x = msg.linear.x;
  Vm_y = msg.linear.y;
  Vm_z = msg.angular.z;

  V1 = (-Vm_x / 2) - (sqrt(3) * Vm_y / 2) + Vm_z;

  if (V1 >= 0) {
    analogWrite(RPWM1, V1);
    analogWrite(LPWM1, 0);
  }
  else {
    analogWrite(RPWM1, 0);
    analogWrite(LPWM1, -V1);
  }

}

void motor2_Cb(const geometry_msgs::Twist& msg) {
  Vm_x = msg.linear.x;
  Vm_y = msg.linear.y;
  Vm_z = msg.angular.z;

  V2 = Vm_x + Vm_z;

  if (V2 >= 0) {
    analogWrite(RPWM2, V2);
    analogWrite(LPWM2, 0);
  }
  else {
    analogWrite(RPWM2, 0);
    analogWrite(LPWM2, -V2);
  }

}

void motor3_Cb(const geometry_msgs::Twist& msg) {
  Vm_x = msg.linear.x;
  Vm_y = msg.linear.y;
  Vm_z = msg.angular.z;

  V3 = (-Vm_x / 2) + (sqrt(3) * Vm_y / 2) + Vm_z;

  if (V3 >= 0) {
    analogWrite(RPWM3, V3);
    analogWrite(LPWM3, 0);
  }
  else {
    analogWrite(RPWM3, 0);
    analogWrite(LPWM3, -V3);
  }
}
// all in motor and kinematics
//void motor_Cb(const geometry_msgs::Twist& msg) {
//  Vm_x = msg.linear.x;
//  Vm_y = msg.linear.y;
//  Vm_z = msg.angular.z;
//  V1 = (-Vm_x / 2) - (sqrt(3) * Vm_y / 2) + Vm_z;
//  V2 = Vm_x + Vm_z;
//  V3 = (-Vm_x / 2) + (sqrt(3) * Vm_y / 2) + Vm_z;
//  
//  if (V1 >= 0) {
//    analogWrite(RPWM1, V1);
//    analogWrite(LPWM1, 0);
//  }
//  else {
//    analogWrite(RPWM1, 0);
//    analogWrite(LPWM1, -V1);
//  }
//
//  if (V2 >= 0) {
//    analogWrite(RPWM2, V2);
//    analogWrite(LPWM2, 0);
//  }
//  else {
//    analogWrite(RPWM2, 0);
//    analogWrite(LPWM2, -V2);
//  }
//
//  if (V3 >= 0) {
//    analogWrite(RPWM3, V3);
//    analogWrite(LPWM3, 0);
//  }
//  else {
//    analogWrite(RPWM3, 0);
//    analogWrite(LPWM3, -V3);
//  }
//}
ros::Subscriber<geometry_msgs::Twist> sub1("/sena/left_joint_velocity_controller/command", &motor1_Cb);
ros::Subscriber<geometry_msgs::Twist> sub2("/sena/back_joint_velocity_controller/command", &motor2_Cb);
ros::Subscriber<geometry_msgs::Twist> sub3("/sena/right_joint_velocity_controller/command", &motor3_Cb);
//ros::Subscriber<geometry_msgs::Twist> sub_ball("/sena/control/cmd_vel", &motorCb)

void setup() {
  pinMode (RPWM1, OUTPUT);
  pinMode (LPWM1, OUTPUT);
  pinMode (RPWM2, OUTPUT);
  pinMode (LPWM2, OUTPUT);
  pinMode (RPWM3, OUTPUT);
  pinMode (LPWM3, OUTPUT);

  nh.initNode();
  nh.subscribe(sub1);
  nh.subscribe(sub2);
  nh.subscribe(sub3);
//  nh.subscribe(sub_ball);
}

void loop() {
  nh.spinOnce();
  delay(1);
}
