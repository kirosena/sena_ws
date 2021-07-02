void encoderLeftMotor() {
  if (digitalRead(ENCO1A) == digitalRead(ENCO1B)) {
    pos_left++;
  }
  else {
    pos_left--;
  }
}

void encoderRightMotor() {
  if (digitalRead(ENCO2A) == digitalRead(ENCO2B)) {
    pos_right--;
  }
  else {
    pos_right++;
  }
}

void encoderBackMotor() {
  if (digitalRead(ENCO3A) == digitalRead(ENCO3B)) {
    pos_back++;
  }
  else {
    pos_back--;
  }
}
