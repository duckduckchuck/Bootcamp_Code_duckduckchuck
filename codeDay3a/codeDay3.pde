PImage picture;
int red;
int green;
int blue;
int radius;

int imageWidth = 600;
int imageHeight = 400;
float ratioWidth;
float ratioHeight;

void setup() {
  size(800, 533);
  size(700, 700);
  picture = loadImage("photo.jpg");
}

void draw() {
  radius = width/2;
  background(255, 255, 255);
  ratioWidth = imageWidth/radius;
  ratioHeight = imageHeight/radius;
    ellipse(width/2, height/2, 700, 700);
  red = mouseX;
  green = mouseY;
  blue = 255 - mouseX;
  tint(red, green, blue);
  imageMode(CENTER);
  image(picture, width/2, height/2, 600-mouseX, 400-mouseX);
}

