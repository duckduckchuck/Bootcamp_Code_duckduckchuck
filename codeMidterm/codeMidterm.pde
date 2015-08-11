PImage cactus; //<>//
PFont font;
boolean pain;

void setup() {
  size(600, 600);
  background(255);
  cactus = loadImage("cactus.png");
  font = loadFont("CooperHewitt100.vlw");
}

void draw() {
  background(255);
    if (mousePressed) { //<>//
          fill( 255, 0, 0);
    rect( 0, 0, width, height); 
    pain = true;
  } else {
    pain = false;
        fill( 255, 255, 0);
    rect( 0, 0, width, height); 
  }
  imageMode(CENTER);
  image(cactus, width/2, height/2, 300, 412.5);
  if (pain == true) {

  }


}