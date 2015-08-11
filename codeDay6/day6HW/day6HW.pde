int[] triX1 = new int [900];
int[] triY1 = new int [900];
int[] triX2 = new int [900];
int[] triY2 = new int [900];

void setup() {
  size (1000,1000);
  noStroke();
}

void draw() {
  background(255);
  for (int i = 0; i < 900; i++) {
    triX1[i] = int(random(0, width));
    triY1[1] = int(random(0, height));
    triX2[i] = int(random(0, width));
    triY2[1] = int(random(0, height));
  }
  for (int i = 0; i < 900; i++) {
     float red = map (i, 0, 900, 0, 255);
     float green = map (i, 0, 900, 0, 255);
     float blue = map (i, 0, 900, 0, 255);
     float alpha = map (i, 0, 900, 0, 100);
     fill(red, green, blue, alpha);
     triangle(0, 0, triX1, triY1, triX2, triY2);
  }
}
