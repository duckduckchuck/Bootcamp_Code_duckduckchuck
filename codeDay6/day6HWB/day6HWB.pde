float[] triX = new float [0];
float[] triY = new float [0];

void setup() {
  size (1000,1000);
}

void draw() {
  background(255);
  fill(0, 100);
  for (int i = 0; i < triX.length; i++) {
        strokeWeight(8);
    point (triX[i], triY[i]);
    if( i < triX.length - 2){
    background(255);

    fill(random(100,255),random(100,255), random(100,255),random(0,100)); //<>//
    triangle(triX[i], triY[i], triX[i+1],triY[i+1],triX[i+2],triY[i+2]);
    }
  }
} //<>//

void mousePressed() {
  triX = append(triX, mouseX);
  triY = append(triY, mouseY);
}