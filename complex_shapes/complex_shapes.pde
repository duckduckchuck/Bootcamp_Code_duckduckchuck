void setup(){
  background (255, 255, 255);
  size(500, 500);
}

void draw(){
  curve(200, 200, 150, 200, 200, 400, 170, 220);
  
  arc(150, 50, 80, 80, 0, PI+QUARTER_PI,PIE);
  beginShape(QUADS);
  vertex(0, 0);
  vertex(350, 10);
  vertex(300, 300);
  vertex(10, 200);
  endShape();
}

