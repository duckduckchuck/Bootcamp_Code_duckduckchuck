float x, y, x2, y2;
float speed;
float size;
//boolean horizontal;
//boolean vertical;
//states[];
//int cycle;
float diameter;
float diameter2;
boolean xIncrease;
float r, g, b;
boolean colorRandom;
boolean switchUp;

void setup() {
  size(800, 800);
  speed = 0.04;
  size = width/4;
}

void draw() {
  diameter = 20;
  diameter2 = 20;
  int time = millis()/40;
  //  cycle = time % 2;
  //  if (cycle == 0) {
  //    horizontal = false;
  //    vertical = true;
  //  }
  //  if (cycle == 1) {
  //    horizontal = true;
  //    vertical = false;
  //  }

  fill(0, 10);
  rect(0, 0, 800, 800);
  noStroke();
  r = 31;
  g = 171;
  b = 255;
  fill(31, 171, 255);
  if (xIncrease == true) {
    diameter = x/2;
    diameter2 = -1 * y2/2;
  }
  if (colorRandom == true) {
    r = random(100, 255);
    g = random(150, 255);
    b = random(200, 255);
  }

//  if (horizontal == true) {
  x = width/2 + sin( frameCount * speed) * size;
  y = 400;
//  }
//  if (vertical == true) {
  fill(r, g, b);
  x2 = 400;
  y2 = height/2 + sin( frameCount * speed) * size;
  //  }
   if (switchUp == true) {
     y = height/2 + sin( frameCount * speed) * size;
     x2 = width/2 + sin( frameCount * speed) * -size;
   }

  ellipse(x, y, diameter, diameter);
  ellipse(x2, y2, diameter2, diameter2);
  if (keyPressed) {
    if (key=='p') {
      xIncrease = true;
      colorRandom = false;
    }
  }
  if (keyPressed) {
    if (key=='c') {
      colorRandom = true;
    }
  }
  if (keyPressed) {
    if (key=='r') {
      xIncrease = false;
      colorRandom = false;
      switchUp = false;
    }
  }
  if (keyPressed) {
    if (key=='s') {
      switchUp = true;
    }
  }
}

