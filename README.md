# motor4wheel
 

 ![](https://github.com/Sussex-Neuroscience/motor4wheel/blob/main/Motor4wheel.PNG)

 Under certain experiments, animals are sitting on a running wheel, but do not move.
 The designs here are a Nema17 motor attachment, together with clutch so that experimenters
 can start moving the wheel very slowly, so that the animals are encouraged to move.
 
 The clutch is part of the system, so that if the animal starts moving faster than 
 the motor, the wheel will move with the animal movement, and not be stuck to the 
 motor speed.
 
 Experimenters can control the motor speed with a knob in the control box

 The system uses [BeeHive](https://beehive-org.github.io/) as an electronic control system, which in principle would
 not be necessary, but this gives us the option of adding feedback circuits to the 
 system, as well as add functionality down the road. 
 
 
 The wheel is rotated by Nema-17 stepper motor. 
 The motor is driven by a4988 stepper motor driver.
 The control progam is written in C++.



 some clutch designs used as inspiration:
 https://www.thingiverse.com/thing:3007265
 https://www.thingiverse.com/thing:3496895
 https://www.printables.com/model/129974-one-way-clutch/files
 https://www.printables.com/model/37898-clutch-thingamabob/files
 https://www.thingiverse.com/thing:2033689/

 Design and development by Solomon Ngotho and Andre M Chagas
