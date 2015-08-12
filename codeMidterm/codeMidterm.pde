import ddf.minim.*; //<>// //<>// //<>// //<>// //<>// //<>// //<>//
Minim minim;
AudioPlayer ouch;
AudioPlayer dead;


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
  ouch = minim.loadFile("ouch.wav");
  dead = minim.loadFile("dead.wav");
  background(255);
}

void draw() {
  time = millis()/1000;
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
  fill(0,200,0, 60);
  if (mousePressed && distance <= 150) {
    if (frameCount % 3 == 1){
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
  if(mentalHealth <= 30){
    //tired = true;
    fill(0,100);
    rect(0, 0, width, height);
    ouch.pause();
    dead.play();
    time = 0;
    songStarted = true;
  }
  if (songStarted == true){
    songStartTime = time;
    //exit();
  }
  println(mentalHealth);
}
//void mousePressed(){
//  pressed = true;
//}

//recoveer from tired state in the future