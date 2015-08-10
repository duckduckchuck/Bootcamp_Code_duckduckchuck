void setup(){
  size(300, 300);
  background(0); 
}

void draw(){
  noStroke();
  for(int i = 0; i < width; i += 10) {
    for(int j = 0; j < height; j += 10){
    fill( j+200, i+100, j+100);
    rect( j, i, 20, 20);
    fill(255);
    stroke(10);
    line(j, i, mouseX, mouseY);
    }
//  fill(i, 250, i-100);
//  rect(200, i, 200, 20);
  }
}
