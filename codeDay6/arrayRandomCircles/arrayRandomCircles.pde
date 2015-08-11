int[] circleX = new int [900];
int[] circleY = new int [900];

void setup() {
  size (1000, 500);

}

void draw() {
  background(0);
  noStroke();
    for (int i =0; i < circleX.length; i++){
    circleX[i] = int(random(0, width));
    circleY[i] = int(random(0, height));
  }
  for (int i = 0; i < circleX.length; i++) {
     float red = map (i, 0, circleX.length, 0, 255);
     float green = map (i, 0, circleX.length, 0, 255);
     float blue = map (i, 0, circleX.length, 0, 255);
     fill(red, green, blue);
     ellipse(circleX[i], circleY[i], 10, 10);
  }

   
}
