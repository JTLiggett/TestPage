var X;
var Y;
var X2;
var Yend;
var RHS;
var DrRW;
var thunder;
var sound;
function setup() {
    createCanvas(1632, 1224);
    RHS = loadImage("RHS.JPG");
    DrRW = loadImage("DrRW.png");
    thunder = loadSound('thunder.mp3');
    frameRate(40);
}

function draw() {
  background(RHS);
}
function mousePressed() {
  background(DrRW);
  thunder.stop();
}
function mouseReleased()
{
   Yend = random(700) +500;
  Y =  random(400) + 100;
  X = random(1500) +50;
  while (Y < Yend) { 
    if ( X > 1550) {
      X2 =  random(50) - 50;
    }
    if ( X < 80) {
      X2 =  random(50);
    } else {
      X2 = random(100) - 50;
    } 
    strokeWeight(10); 
    line(X, Y, X+X2, Y+20); 
    stroke(255, 255, 0);
    Y += 20;
    X += X2;
   thunder.play();
  }
}
