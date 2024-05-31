from machine import Pin
from time import sleep
from machine import ADC

IN1 = Pin(15,Pin.OUT)
IN2 = Pin(2,Pin.OUT)
IN3 = Pin(16,Pin.OUT)
IN4 = Pin(17,Pin.OUT)

pins = [IN1,IN2,IN3,IN4]
pot = ADC(Pin(35))
pot.atten(ADC.ATTN_11DB)

sequence = [[0,0,1,0],[0,1,0,0],[0,0,0,1],[1,0,0,0]]

oldMax = 4095
oldMin = 0
newMax = 1.0
#change this to modify wheel top speed (lower values make it spin faster)
newMin = 0
oldRange = (oldMax - oldMin)  
newRange = (newMax - newMin)  

while True:
    for step in sequence:
        for i in range(len(pins)):
            pins[i].value(step[i])
            sleep(0.001)
        #potValue = pot.read()
        #print(potValue)
        
        
        #newValue = (((potValue - oldMin) * newRange) / oldRange) + newMin
        #sleep(newValue)