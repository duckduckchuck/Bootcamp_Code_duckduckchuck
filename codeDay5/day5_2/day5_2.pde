int i;

void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  background(0);
    i = 0;

  while( i <= width){
    int j = 0;
    while(j <= height){
      fill(i, 100, 250, 100);
      rect(j, i , 20, 20);
      j = j+ 50;
    }
    i = i + 50;
  }
  println("i" + i);
//  println("j" + j);
}
