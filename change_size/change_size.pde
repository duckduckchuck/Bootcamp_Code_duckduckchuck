int r, g, b;
// grouping r, g, b int together
float diameter;
float x, y, x2, y2;
float speed;
float size;
PImage image;

boolean circle;
boolean wave;

void setup() {
  image = loadImage("chickenFeet.png");
  noStroke();
  background (0, 0, 0);
  size(400, 400);
  x = width/2;
  y = height/2;
  diameter = 20;
  speed = 0.01;
  size = width/4;
}

void draw(){
  fill(0,10);
  rect(0,0, 400, 400);

  r = 255;
  g = 255;
  b = 0;
  fill(r, g, b);
  
  x = width/2 + sin(frameCount * speed) * size;
  y = height/2;
  
  diameter= abs(sin(frameCount * speed)) * size;
  ellipse(width/2, height/2, diameter, diameter);
//  image(image, x, y);
}
