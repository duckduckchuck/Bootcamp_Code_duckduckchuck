int redValue;
boolean isRed;

void setup() {
  size(500, 500);
  background(255, 255, 255);
}
void draw() {
  if(isRed == false){
  redValue += 1;
  }
  
  if(isRed == true){
  redValue -= 1;
  }
  
  if(redValue == 255){
  isRed = true;
  }

  if(redValue == 0){
    isRed = false;
  }
  fill(redValue, 0, 0);
  noStroke();
  ellipse(width/2, height/2, 100, 100);
}

