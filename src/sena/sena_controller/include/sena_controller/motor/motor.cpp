#include <sena_controller/motor/motor.h>

controller::controller(driver motor_driver, int pwm_pin, int RPWM, int LPWM):
    motor_driver_(motor_driver),
    pwm_pin_(pwm_pin),
    RPWM_(RPWM),
    LPWM_(LPWM)
{
    switch (motor_driver)
    {
    case BTS7960:
        pinMode(RPWM_, OUTPUT);
        pinMode(LPWM_, OUTPUT);
        break;
    }
}

void controller::spin(int pwm){
    switch (motor_driver_)
    {
    case BTS7960:
        if (pwm > 0){
            analogWrite(RPWM_, abs(pwm));
            analogWrite(LPWM_, 0);
        }
        else if(pwm < 0){
            analogWrite(RPWM_, 0);
            analogWrite(LPWM_, abs(pwm));
        }
        else{
           analogWrite(RPWM_, 0);
           analogWrite(LPWM_, 0);
        }
        break;
    
    default:
        break;
    }
}