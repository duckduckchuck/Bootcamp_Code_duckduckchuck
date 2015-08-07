int xPos;
int yPos;
boolean mouseOverCircle;

void setup() {
  size(600, 600);
  xPos = width/2;
  yPos = height/2;
  noStroke();
}

void draw() {
  fill(255, 230, 230);
  ellipse(xPos, yPos, 100, 100);
//  println("y position of mouse" + mouseY);
//  println("x position of mouse" + mouseX);
  if(mouseX >= xPos){
    mouseOverCircle = true;
  }
  else if(mouseX <= xPos){
    mouseOverCircle = false;
  }
  if(mouseOverCircle == true){
    xPos = xPos + 1;
  }
  if(mouseOverCircle == false){
    xPos = xPos - 1;
  }
  println(xPos);
}

