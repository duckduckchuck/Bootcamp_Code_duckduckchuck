int r, g, b;
//grouping r, g, b int together
float diameter;
float x, y, x2, y2;
float speed;
float size;

void setup(){
  noStroke();
  background (0, 0, 0);
  size(400, 400);
  x = width/2;
  y = height/2;
  diameter = 5;
  speed = 0.05;
  size = width/4;
}

void draw(){
  fill(0,10);
  rect(0,0, 400, 400);
  r = 255;
  g = 255;
  b = 0;
  fill(r, g, b);
  
  x = frameCount % width;
  y = height/2 + sin(frameCount * speed) * size;
  ellipse(x, y, diameter, diameter);
  
    fill(0,255,0);
  x2 = frameCount % width;
  y2 = height/2 + cos(frameCount * speed) * size / 2;
  ellipse(x2, y2, diameter, diameter);
  
}
