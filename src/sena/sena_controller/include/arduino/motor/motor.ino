#include <Arduino.h>
#include <PID.h>
#include <Wire.h>
#include <config.h>
#include <motor.h>
#include <ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Float64.h>
#include <geometry_msgs/Vector3Stamped.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose2D.h>
#include <ros/time.h>

ros::NodeHandle nh;
unsigned long g_prev_command_time = 0;

PID motor1_pid(PWM_MIN, PWM_MAX, K_P, K_I, K_D);
PID motor2_pid(PWM_MIN, PWM_MAX, K_P, K_I, K_D);
PID motor3_pid(PWM_MIN, PWM_MAX, K_P, K_I, K_D);

controller motor1_controller(controller::MOTOR_DRIVER, RPWM1, LPWM1);
controller motor2_controller(controller::MOTOR_DRIVER, RPWM2, LPWM2);
controller motor3_controller(controller::MOTOR_DRIVER, RPWM3, LPWM3);

float Vm_x = 0;
float Vm_y = 0;
float Vm_z = 0;

volatile float pos_left = 0;
volatile float pos_right = 0;
volatile float pos_back = 0;

void motorCb(const geometry_msgs::Twist &msg) {
  Vm_x = msg.linear.x;
  Vm_y = msg.linear.y;
  Vm_z = msg.angular.z;
  g_prev_command_time = millis();
}

void pidCb(const geometry_msgs::Vector3 &pid) {
  motor1_pid.updateConstants(pid.x, pid.y, pid.z);
  motor2_pid.updateConstants(pid.x, pid.y, pid.z);
  motor3_pid.updateConstants(pid.x, pid.y, pid.z);
}

geometry_msgs::Pose2D pwm_out_msg;
geometry_msgs::Pose2D enc_msg;
geometry_msgs::Vector3Stamped speed_msg;
geometry_msgs::Vector3 mtr1_pid;
geometry_msgs::Vector3 mtr2_pid;
geometry_msgs::Vector3 mtr3_pid;

ros::Subscriber<geometry_msgs::Twist> cmd_vel("cmd_vel", motorCb);
ros::Subscriber<geometry_msgs::Vector3> pid_constant("pid_constant", pidCb);

ros::Publisher speed_pub("speed", &speed_msg);
ros::Publisher pwm_out("pwm_output", &pwm_out_msg);
ros::Publisher enc_pub("encoder", &enc_msg);

void publishSpeed(float current_rpm1, float current_rpm2, float current_rpm3) {
  speed_msg.header.stamp = nh.now();
  speed_msg.vector.x = current_rpm1; //left wheel
  speed_msg.vector.y = current_rpm2; //right wheel
  speed_msg.vector.z = LOOPTIME / 1000;
  speed_pub.publish(&speed_msg);

  enc_msg.x = pos_left;
  enc_msg.y = pos_right;
  enc_msg.theta = pos_back;
  enc_pub.publish(&enc_msg);
}

void moveBase() {
  int current_rpm1 = pos_left / ENCODER_PULSE;
  int current_rpm2 = pos_right / ENCODER_PULSE;
  int current_rpm3 = pos_back / ENCODER_PULSE;

  int V1, V2, V3;
  V1 = (-Vm_x / 2) - (sqrt(3) * Vm_y / 2) + Vm_z;
  V2 = Vm_x + Vm_z;
  V3 = (-Vm_x / 2) + (sqrt(3) * Vm_y / 2) + Vm_z;

  motor1_controller.spin(motor1_pid.compute(V1, current_rpm1));
  motor2_controller.spin(motor2_pid.compute(V2, current_rpm2));
  motor3_controller.spin(motor3_pid.compute(V3, current_rpm3));

  publishSpeed(current_rpm1, current_rpm2, current_rpm3);
}

void stopBase() {
  Vm_x = 0;
  Vm_y = 0;
  Vm_z = 0;
}

void printDebug() {
  char buffer[50];
  double current_enc_left = pos_left / ENCODER_PULSE;
  double current_enc_right = pos_right / ENCODER_PULSE;
  double current_enc_back = pos_back / ENCODER_PULSE;
  sprintf(buffer, "Encoder Left : %lf", current_enc_left);
  nh.loginfo(buffer);
  sprintf(buffer, "Encoder Right : %lf", current_enc_right);
  nh.loginfo(buffer);
  sprintf(buffer, "Encoder Back : %lf", current_enc_back);
  nh.loginfo(buffer);
}

void setup() {
  nh.initNode();
  nh.getHardware()->setBaud(57600);

  nh.subscribe(cmd_vel);
  nh.subscribe(pid_constant);
  nh.advertise(speed_pub);
  nh.advertise(enc_pub);
  nh.advertise(pwm_out);

  pinMode(ENCO1A, INPUT);
  pinMode(ENCO1B, INPUT);
  digitalWrite(ENCO1A, HIGH);
  digitalWrite(ENCO1B, HIGH);
  attachInterrupt(digitalPinToInterrupt(ENCO1A), encoderLeftMotor, RISING);

  pinMode(ENCO2A, INPUT);
  pinMode(ENCO2B, INPUT);
  digitalWrite(ENCO2A, HIGH);
  digitalWrite(ENCO2B, HIGH);
  attachInterrupt(digitalPinToInterrupt(ENCO2A), encoderRightMotor, RISING);

  pinMode(ENCO3A, INPUT);
  pinMode(ENCO3B, INPUT);
  digitalWrite(ENCO3A, HIGH);
  digitalWrite(ENCO3B, HIGH);
  attachInterrupt(digitalPinToInterrupt(ENCO3A), encoderBackMotor, RISING);

  while (!nh.connected()) {
    nh.spinOnce();
  }
  nh.loginfo("ROBOT CONNECTED!");
  delay(1);
}

void loop() {
  static unsigned long prev_control_time = 0;
  static unsigned long prev_debug_time = 0;

  if ((millis() - prev_control_time) >= LOOPTIME) {
    moveBase();
    prev_control_time = millis();
  }

  if ((millis() - g_prev_command_time) >= 400) {
    stopBase();
  }

  if (DEBUG) {
    if ((millis() - prev_debug_time) >= (1000 / DEBUG_RATE)) {
      printDebug();
      prev_debug_time = millis();
    }
  }
  nh.spinOnce();
}
