import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;        // Data received from the serial port


/**
 * Keyboard. 
 * 
 * Click on the image to give it focus and press the letter keys 
 * to create forms in time and space. Each key has a unique identifying 
 * number. These numbers can be used to position shapes in space. 
 */

int rectWidth;
   
void setup() {
  size(640, 360);
  noStroke();
  background(0);
  rectWidth = width/4;
  
    String portName = Serial.list()[4];
  myPort = new Serial(this, portName, 9600);
}

void draw() { 
  // keep draw() here to continue looping while waiting for keys
}

void keyPressed() {
       
  if (key == 'Q'){
    myPort.write('Q');
  }
  
  if (key == 'W'){
    myPort.write('W');
  }
  
  if (key == 'E'){
    myPort.write('E');
  }
  
  if (key == 'R'){
    myPort.write('R');
  }
  
  if (key == 'A'){
    myPort.write('A');
  }
  
  if (key == 'S'){
    myPort.write('S');
  }
  
  if (key == 'D'){
    myPort.write('D');
  }
  
  if (key == 'F'){
    myPort.write('F');
  }
}
