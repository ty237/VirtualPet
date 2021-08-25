import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(600, 600);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(192);
  int y = arduino.analogRead(5);
  y = y/10;
  System.out.println(y);
  
  ellipse(244, 68, 175, 100);
  triangle(166, 52, 166, 81, 125, 71);
  // Multiply all the y's by y once you have figures out the distance between the p8ieces
  triangle(323, 53, 323, 75, 363, 63);
  triangle(199, 100, 216, 107, 183, 128);
  triangle(274, 108, 294, 100, 304, 128);
  triangle(234, 63, 258, 64, 244, 85);
  ellipse(231, 46, 30, 20);
  ellipse(231, 46, 5, 5);
  ellipse(260, 46, 30, 20);
  ellipse(260, 46, 5, 5);
  text(mouseX, 20, 480);
  text(mouseY,40, 480);
}
