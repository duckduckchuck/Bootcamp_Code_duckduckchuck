int xPos;
int yPos;
int circleW;
int circleH;
int circle2W;
int circle2H;
boolean mouseOverCircle;

void setup(){
  size(600,600);
  noStroke();
  xPos = width/2;
  yPos = height/2;
  circleW = width/6;
  circleH = width/6;
  circle2W = circleW-100;
  circle2H = circleH-100;
}

void draw(){
  background(mouseX,mouseY,0);
  fill(255,255,255);
  ellipse(xPos, yPos, circleW, circleH);
  fill(mouseX,mouseY,0);
  ellipse(xPos, yPos, circle2W, circle2H);
  if(mouseX >= xPos){
    mouseOverCircle = true;
  }
  else if(mouseX <= xPos){
    mouseOverCircle = false;
  }
  if(mouseOverCircle == true){
    circleW = mouseX;
    circle2W = 600 - mouseX;
  }
  else if(mouseOverCircle == false){
    circleH = 600 - mouseX;
    circle2H = mouseX;
  }
}
