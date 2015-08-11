float[] triX1 = new float [900];
float[] triY1 = new float [900];
float[] triX2 = new float [900];
float[] triY2 = new float [900];

void setup() {
  size (1000,1000);
  noStroke();
  background(255);
}

void draw() {
  for (int i = 0; i < 900; i++) {
    triX1[i] = (random(0, width));
    triY1[1] = (random(0, height));
    triX2[i] = (random(0, width));
    triY2[1] = (random(0, height));
  }
  for (int i = 0; i < 900; i++) {
     float red = map (i, 0, 900, 0, 255);
     float green = map (i, 0, 900, 0, 255);
     float blue = map (i, 0, 900, 0, 255);
     float alpha = map (i, 0, 900, 0, 255);
     fill(0, alpha);
     triangle(0, 0, triX1[i]/2, triY1[i]/2, triX2[i]/2, triY2[i]/2);
  }
}