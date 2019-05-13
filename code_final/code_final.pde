//how many rooms there are
import processing.sound.*;
int stage =1;
PFont font;

boolean presseth; 
PImage startscreen;
PImage momhome;
PImage mami;
PImage momincar;
PImage mombeach;
PImage momstone;
PImage mompark;
PImage momrun;
PImage mommycar;


//boolean openNow = false;
SoundFile knob;

void setup() {
  stage = 1;
  size(1000, 1000);
  noStroke();
  imageMode (CENTER); //putting photos in center
  startscreen = loadImage("main.jpg"); 
  momhome = loadImage ("home.jpg"); 
  mami = loadImage ("mom3.jpg");
  mommycar = loadImage ("mom5.jpg");
  mombeach = loadImage("mom4.jpg");
  momstone= loadImage ("mom2.jpg");
  mompark= loadImage ("mompark.png");
  momrun= loadImage ("mom1.jpg");
  
  
  knob = new SoundFile(this, "olddoor.mp3");
  //knob.play();
  knob.amp(2);
  
}
void startscreen(){
  image(startscreen,500,500);
  
}
void momhome() {
 image(momhome, 500, 500);
}
void mommycar() {
  image(mommycar, 500, 500, 1000, 1000);
}

void mombeach() {
  image(mombeach, 450,500, 1100, 1100);

}
void mami() {
  image(mami, 500, 400, 1000, 1000);
  //rect(150,50,50,50);
}

void momstone() {
  image(momstone, 300, 300, 500, 500);
} 

void mompark() {
   image(mompark, 300, 300, 300, 300);
} //this is the left window

void momrun() {
image(momrun, 480, 400,1000,1000);
}


void draw() {
  println (mouseX, mouseY);
  //homescreen, play music 
 
  if(stage==1){
    startscreen();
    textAlign(CENTER);
    font = createFont("font.vlw", 32);
    textFont(font);
    text("WHERE IS YOUR HOME?", 500,450);
    text("PRESS 'D' TO START GAME", 500, 500);
    if(keyPressed == true){
      if (key == 'd' || key == 'D') {
      stage = 2;
    }
  }
  }
    if (stage == 2) {
      momhome();
      if (mouseX < 452 && mouseX > 310
      && mouseY < 615 && mouseY > 400 && mousePressed) { //left window
        stage = 3;
    }
    
   
      if (mouseX < 735 && mouseX > 590
      && mouseY < 620 && mouseY > 390 && mousePressed) { //right window
        mombeach();  
    }
      if (mouseX < 205 && mouseX > 0
      && mouseY < 110 && mouseY > 0 && mousePressed) { //sun
        mami();  
    }
    if (mouseX < 640 && mouseX > 435
     && mouseY < 855 && mouseY > 778 && mousePressed) { //ladder
        momrun();  
    }
    if(mouseX < 575 && mouseX > 545
        && mouseY < 730 && mouseY > 695 && mousePressed)
        {
          println("i");
         
          knob.play();
          knob.amp(2);
        }else{
          
        knob.stop();
    }
    }
//if mousex and mousey are within those numbers it will open up another room

      if (stage == 3){
        mommycar(); //navigate back to home
        rect(100,500,100,50);
        if(mouseX < 200 && mouseX > 100
        && mouseY < 550 && mouseY > 500 && mousePressed)
        {
        stage = 2;
      }
      }
    
 
      if (stage == 4){
      if (mouseX < 290 && mouseX > 250
        && mouseY < 330 && mouseY > 270) { //left window
        background(0);
        mompark();
        stage = 3;
      }
  }
    

}
  
