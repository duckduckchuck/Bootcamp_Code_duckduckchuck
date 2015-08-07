float angle = 0;

void setup() {
  size(500 , 500);
  background(0);
}

void draw() {
  


  float d1 = (255 * sin(angle));
  float d2 = (255 * sin(-angle));
  
  fill(d1,0,0);
  ellipse(width/2, 100, 100, 100);
  fill(0,d2,0);
  ellipse(width/2, 250, 100, 100);
  fill(d1,0,0);
  ellipse(width/2, 400, 100, 100);
  angle += 0.02;
}

