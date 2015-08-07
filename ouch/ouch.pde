PImage cactus;
PFont font;
float x = 100;

void setup(){
  size(800, 800);
  cactus = loadImage("cactus.png");
  background(255);
  font = loadFont("FranklinGothicBookCnd.vlw");
  textFont(font, 100);
}

void draw(){
  
  imageMode(CENTER);
  image(cactus, width/2, height/2);
  if(mousePressed){
    background(255,0,0);
    textSize(x);
    text("ouch", mouseX, mouseY);
    x += 1;
  }
  else{
    background(255);
    image(cactus, width/2, height/2);
  }
  if (keyPressed) {
    if (key == 's') {
      saveFrame();
    }
  }
}
  
