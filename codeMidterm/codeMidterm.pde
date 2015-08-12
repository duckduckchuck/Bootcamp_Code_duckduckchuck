import ddf.minim.*; //<>// //<>// //<>// //<>// //<>// //<>// //<>//
Minim minim;
AudioPlayer ouch;
AudioPlayer dead;

int trigger = 0;
int count = 140;
PImage cactus;
PFont font;
int mentalHealth;
float time;
float songStartTime;
float songDuration;
float distance;
boolean pain;
boolean healthy = true;
boolean pressed;
boolean tired;
boolean songStarted;

void setup() {
  size(600, 600);
  mentalHealth = 100;
  cactus = loadImage("cactus.png");
  font = loadFont("CooperHewitt100.vlw");
  minim = new Minim(this);
  ouch = minim.loadFile("ouch.mp3");
  dead = minim.loadFile("dead.wav");
  background(255);
}

void draw() {
  if(trigger == 1 && count > -1) {
  println("die count"+ count);
  count --;
  }
  frameRate(10);
  if(healthy == true){
    mentalHealth = 100;
  }
  //else if(mousePressed == false || distance >= 150){
  //  mentalHealth += 1;
  //}

    
  distance = dist(mouseX, mouseY, width/2, 220);
  background(255);
  imageMode(CENTER);
  image(cactus, width/2, height/2, 300, 412.5);
  fill(0);
  textSize(60);
  
  text("Please do not", 100, 460);
  text("touch the cactus.", 70, 530);
  if (mousePressed && distance <= 150) {
    if (frameCount % 10 == 1){
    ouch.play();
    ouch.rewind();
    }
    mentalHealth -= 1;
    fill( 255, 0, 0);
    rect( 0, 0, width, height); 
    fill( 255, 255, 255);
    textSize(60);
    text( "ouch", random(0, 600), random(0, 600)); 
  }
  else {
    pain = false;
  } 
  if(pain == true){
    //mentalHealth -= 1;
    //fill( 255, 0, 0);
    //rect( 0, 0, width, height); 
    //fill( 255, 255, 255);
    //textSize(60);
    //text( "ouch", random(0, 600), random(0, 600)); 
  }
  if (pain == false) {
    if (mentalHealth < 100){
      healthy = false;
    }
    if (mentalHealth == 100){
      healthy = true;
    }
  }
  if(mentalHealth <= 10){
    trigger = 1;
    fill(0,0,0);
    rect(0,0,width, height); 
    ouch.pause();
    dead.play();
    //stroke(255);
    //  for(int i = 0; i < dead.bufferSize() - 1; i++)
  {
//  //  line(i, 300 + dead.mix.get(i)*100, i+1, 300 + dead.mix.get(i+1)*100);
  }
//    //time = 0;
    //songStarted = true;
  }
  if(count == 0){
    exit();
  }
//  //if (songStarted == true){
    //songStartTime = time;
    //exit();
  //println(mentalHealth);
}
//void mousePressed(){
//  pressed = true;
//}

//recoveer from tired state in the future