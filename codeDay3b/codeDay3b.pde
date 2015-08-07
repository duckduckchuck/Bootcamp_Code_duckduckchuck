PImage face;
int x;
int y;
int location;
float r;
float g;
float b;

void setup(){
  size(319, 500);
  face = loadImage("face.jpg");
}

void draw(){
  loadPixels();
  location = y * width + x;
  x = int(random(face.pixels[location]));
  y = int(random(face.pixels[location]));
  r = red(face.pixels[location]);
  g = green(face.pixels[location]);
  b = blue(face.pixels[location]);
  fill(r, g, b);
//  image(face,0,0);

}
