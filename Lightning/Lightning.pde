
import processing.sound.*;
SoundFile thunder;
int X;
int Y;
int X2;
int Yend;
int time;
int time2;
PImage RHS;
PImage DrRW;


void setup() {
  size(1632, 1224);  
  RHS = loadImage("RHS.JPG"); 
  DrRW = loadImage("DrRW.png"); 
  frameRate(40); 
  thunder = new SoundFile(this, "THUNDER.mp3");
}
void draw() {
  background(RHS);
}
void mousePressed() {
  background(DrRW);
  thunder.stop();
}
void mouseReleased() {
  Yend = (int) (Math.random()*700 ) +500;
  Y = (int) Math.random() * 600 + 100;
  X =(int) (Math.random()*1500) +50;
  while (Y < Yend) { 
    if ( X > 1550) {
      X2 = (int) (Math.random()*50) - 50;
    }
    if ( X < 80) {
      X2 = (int) (Math.random()*50);
    } else {
      X2 =(int) (Math.random()*100) - 50;
    } 
    strokeWeight(10); 
    line(X, Y, X+X2, Y+20); 
    stroke(255, 255, 0);
    Y += 20;
    X += X2;
    thunder.play();
  }
}
