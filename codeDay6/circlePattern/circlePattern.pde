
void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  for ( int i = 0; i <= width; i += 40) {
    for ( int j = 0; j <= height; j += 40) {
      fill( mouseX + (i/2), (j/2), (i + j)/4);
      ellipse( i - 20, j + 20, 40, 40);
      ellipse( i, j, 40, 40);
      ellipse( i + 20, j + 20, 40, 40);
      stroke((i + j)/4, i/2, j/2);
   }
  }
}
