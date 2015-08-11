int numOfPos = 50;
int[] xPos = new int[numOfPos];
int[] yPos = new int[numOfPos];
String[] section = {
  "section 1", "section 2", "section 3"
};

void setup() {
  size( 500, 500);
  for (int i = 0; i < numOfPos; i++) {
    xPos[i] = 0;
    yPos[i] = 0;
  }
}

void draw() {
  background(255);
  fill(0);
  textSize(30);
  for (int i = 0; i < section.length; i ++){
    text(section[i], i * width/2 + 50, height/2);
  }
  for (int i = 0; i < numOfPos - 1; i++) {
    xPos[i] = xPos[i+1];
    yPos[i] = yPos[i+1];
  }
  
  xPos[numOfPos - 1] = mouseX;
  yPos[numOfPos - 1] = mouseY;
  
  for(int i = 0; i < numOfPos; i++) {
    float mappedColor;
    mappedColor = map(i, xPos.length, 0, 0, 255);
    noStroke();
    if( mouseX >= 0 && mouseX <= width/2){
      fill(mappedColor, 255, 255);
      ellipse(xPos[i], yPos[i], 10, 10);
    }
    else if( mouseX >= width/2 && mouseX <= width){
      fill(255, mappedColor, 255);
      rect(xPos[i], yPos[i], 10, 10);
    }
//    line(xPos[i], yPos[i], xPos[i-1], yPos[i-1]);
  }
  println( "last" + xPos[49]);
  println( "2ndlast" + xPos[48]);
}
