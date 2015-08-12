float x = 100;
float y = 100;
float xSpeed = 5;
float ySpeed = 5;

void setup() {
  size( 500, 500);
}

void draw() { 
  background(255);
  fill (x, y, ySpeed);
  x = x + xSpeed;
  y = y + ySpeed;
  if ( x > width) {
    xSpeed = -xSpeed;
  }
  if ( x < 0) {
    xSpeed = -xSpeed;
  }
  if ( y > height) {
    ySpeed = -ySpeed;
  }
  if ( y < 0) {
    ySpeed = -ySpeed;
  }
  ellipse( x, y, 30, 30);
}