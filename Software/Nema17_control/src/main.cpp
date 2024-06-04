#include <Arduino.h>
#include <AccelStepper.h>

#define dirPin 15
#define stepPin 2
#define motorInterfaceType 1

// Define a stepper and the pins it will use
AccelStepper stepper = AccelStepper(motorInterfaceType, stepPin, dirPin); ; // Defaults to AccelStepper::FULL4WIRE (4 pins) on 2, 3, 4, 5

// This defines the analog input pin for reading the control voltage
// Tested with a 10k linear pot between 5v and GND
#define ANALOG_IN 35

void setup()
{  
  stepper.setMaxSpeed(7000);
}

void loop()
{
  // Read new position
  int analog_in = analogRead(ANALOG_IN);
  int speed = map(analog_in, 0, 2300, 0, 1067);
  stepper.setSpeed(speed);
  stepper.runSpeed();
}