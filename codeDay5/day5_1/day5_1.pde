int i;

void setup() {
  size(800, 800);
  background(0);
  i = 100;
}

void draw() {
  background(0);
  while(i <= mouseY){
    fill(i, 100, mouseY);
    rect(0, i, 100, 10);
    i += 50;
  }
  i = 100;
  while(i <= mouseY){
  rect(0, i, 100, 10);
  i += 50;
  }
}
