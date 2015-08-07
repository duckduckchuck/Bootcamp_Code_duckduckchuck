int r, g, b;
// grouping r, g, b int together
float diameter;
float x, y, x2, y2;
float speed;
float size;

boolean circle;
boolean wave;
//states[];
int cycle;

void setup() {
  noStroke();
  background (0, 0, 0);
  size(400, 400);
  x = width/2;
  y = height/2;
  diameter = 20;
  speed = 0.05;
  size = width/4;
  //  size = 0;
}
void keyPressed(){
  if(key == 'c'){
    circle = true;
    wave = false;
  }
  if(key == 'w'){
    wave = true;
    circle = false;
  }
}
void draw() {
  int time = millis()/300;
  cycle = time % 2;


  println(time);
  if(cycle == 0) {
    circle = false;
    wave = true;

  }
  if(cycle==1){
    circle = true;
    wave = false;
  }
//  if(seconds==2){
//    circle = false;
//    wave = true;
//  }
//  if(seconds==3){
//    circle = true;
//    wave = false;
//  }
//  if(seconds==4){
//    circle = false;
//    wave = true;
//  }
//    if(seconds==5){
//    circle = true;
//    wave = false;
//  }

  fill(0,10);
  rect(0,0, 400, 400);
  r = 255;
  g = 255;
  b = 0;
  fill(r, g, b);
  if(circle == true){
  wave = false;
  x = height/2 + sin(frameCount * speed) * size;
  y = height/2 + cos(frameCount * speed) * size;

  }
  
  if(wave == true){
  circle = false;
  x = frameCount % width;
  y = height/2 + sin(frameCount * speed) * size;

  }
  
  ellipse(x, y, diameter, diameter);
//  size += 1;
//  diameter = abs(sin(frameCount * speed)) * size;
  ellipse(x, y, diameter, diameter);

  //  x = height/2 + cos(frameCount * speed) * size;
  //  y = height/2 + sin(frameCount * speed) * size;
  //  ellipse(y, x, diameter, diameter);
}

