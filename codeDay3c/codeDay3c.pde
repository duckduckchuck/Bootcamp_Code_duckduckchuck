PFont font;
int fontSize;
boolean fontPlus;

void setup() {
  size(700, 700);
  font = loadFont("FranklinGothicBookCnd.vlw");
}

void draw() {
  if(fontPlus == true){
    fontSize += 1;
  }
  textFont(font, fontSize);
  fill(0, 0, 0);
// text("hello", 150, 150);
  if (mousePressed) {
    fontPlus = true;
    background(random(100, 255), random(100, 255), random(100, 255));
    text("die", mouseX, mouseY);
   
  }
  else {
    text("yeah, right", 100, 300);
    fontPlus = false;
  }
  if (keyPressed) {
    if (key == 's') {
      saveFrame();
    }
  }
}