#include <ros.h>
#include <geometry_msgs/Twist.h>
#include <rospy_tutorials/Floats.h>

//MOTOR1
#define RPWM1 4
#define LPWM1 5

float Vm_x, Vm_y, Vm_z;
float V1, V2, V3;

ros::NodeHandle nh;
rospy_tutorials::Floats joint_state;

void motorCb(const geometry_msgs::Twist& msg){
  Vm_x = msg.linear.x;
  Vm_y = msg.linear.y;
  Vm_z = msg.linear.z;

  V1 = (-Vm_x / 2) - (sqrt(3)*Vm_y/2) + Vm_z;
  
  if (V1 >= 0){
    analogWrite(RPWM1, V1);
    analogWrite(LPWM1, 0);
  }
  else {
    analogWrite(RPWM1, 0);
    analogWrite(LPWM1, -V1);
  }
  
}

ros::Subscriber<geometry_msgs::Twist> sub("/cmd_vel", &motorCb);
ros::Publisher pub("/joint_from_arduino", &joint_state);
void setup() {

  pinMode (RPWM1, OUTPUT);
  pinMode (LPWM1, OUTPUT);
  nh.initNode();
  nh.subscribe(sub);
  nh.advertise(pub);
}

void loop() {
  if (V1 > 0){
    joint_state.data_length = 1;
    joint_state.data[0] = V1;
    pub.publish(&joint_state);
  }
  nh.spinOnce();
  delay(1);
}
