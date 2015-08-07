int i;

void setup() {
  size(800, 800);
  background(0);
  i = 100;
}

void draw() {
  background(0);
  
  while( i <=300){
    int j = 100;
    while(j <= 300){
      fill(i, 100, 250, 100);
      rect(j, i , 20, 20);
      j = j+ 50;
    }
    i = i + 50;
  }
  println("i" + i);
  println("j" + i);
}
