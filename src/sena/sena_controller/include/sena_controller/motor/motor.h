#ifndef MOTOR_H
#define MOTOR_H

#include <Arduino.h>

class controller{
    public:
        enum driver{BTS7960};
        controller(driver motor_driver, int pwm_pin, int RPWM, int LPWM);
        void spin(int pwm);
    
    private:
        driver motor_driver_;
        int pwm_pin_;
        int RPWM_;
        int LPWM_;
};

#endif