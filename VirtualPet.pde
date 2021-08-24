public void setup() {
  size(600, 600);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(192);
  int y = arduino.analogRead(5);
  y = y/2;
  System.out.println(y);
  y = 1;
  
  ellipse(250, 200, 200, 200);
  triangle(160, 20, 160, 16, 120, 19);
  // Multiply all the y's by y once you have figures out the distance between the p8ieces
  triangle(340, 22*y, 340, 16, 380, 19);
  text(mouseX, 20, 480);
  text(mouseY,40, 480);
}

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
