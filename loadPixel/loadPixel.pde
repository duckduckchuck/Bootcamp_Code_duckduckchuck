PImage myImage;
float r;
float g;
float b;

void setup(){
  size(500, 675);
  background(255, 255, 255);
  myImage = loadImage("frame.jpg");
}

void draw(){
  noStroke();
  int x = int(random(myImage.width));
  int y = int(random(myImage.height));
  int location = x + y * myImage.width;
  
  loadPixels();
  
  r = red(myImage.pixels[location]);
  g = green(myImage.pixels[location]);
  b = blue(myImage.pixels[location]);
  
  fill(r, g, b);
  ellipse(x, y, 40, 40);
}
  
