int[] circleX;
void setup() {
  size(800, 800);
  circleX = new int[4];
//  this is declaring the number in array
  circleX[0] = 100;
  circleX[1] = 300;
  circleX[2] = 500;
  circleX[3] = 700;
}

void draw() {
  ellipse( circleX[0], height/2, 200, 200);
  ellipse( circleX[1], height/2, 200, 200);
  ellipse( circleX[2], height/2, 200, 200);
  ellipse( circleX[3], height/2, 200, 200);
}
