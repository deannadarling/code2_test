//Create a state machine with 4 different scenes using a switch. 
//(no example sketch, I'll just be looking to make sure your 
//switch is working properly)
int state = 0;
//<<<<<<< HEAD
grannysmith f;
cow a;


void setup() {
  size(600, 600);
  rectMode(CENTER);
  f = new grannysmith(190,2);
  a = new cow(0, 100,1);

  
}

void drawTracktor(){
    noStroke();
    fill(25, 111, 61); //green
    rect(400, 390, 200, 100); //body
    fill(255, 255, 204);
    ellipse(500, 390, 25,50); //light
    fill(241, 196, 15); //yellow
    stroke(1);
    rect(265, 400, 80, 20); //connection
    noStroke();
    fill(125, 60, 152);//purple
    ellipse(330, 450, 100, 100);
    ellipse(470, 450, 60, 60); //wheels
    fill(241, 196, 15); //yellow
    rect(200, 430, 100, 20);
    rect(200, 400, 100, 20);
    rect(200, 370, 100, 20);//backload
    rect(395, 290, 100, 100);//top square
    fill(125, 60, 152);//purple
    ellipse(155, 460, 50, 50);
    ellipse(240, 460, 50, 50);
}

void draw() {
  switch(state) {
  case 0 : 
    scene0();
    break;
    //after specifing case, you need a case setting and break
  case 1:
    scene1();
    break;
  case 2:
    scene2();
    break; 
  case 3:
    scene3();
      break; 
  }
  
  

  println(mouseX, mouseY);
}
void drawRects(int numRects) {
  for(int i = 0; i < numRects; i++) {
    ellipse(random(width), random(height), 10, 10);
    fill(255,255,255);
  }
}
  


void keyPressed() {
  switch(state) {
  case 0:
    if (key == 'g') {
      state = 1;
  }
  break;
  case 1:
   if (key == 'r'){
     state = 2;
   }
   break;
   case 2:
      if (key == 'o'){
     state = 3;
   }
   break;
   case 3:
      if (key == 'w'){
     state = 0;
      }
     default:
     break;
      }
  if(key == 'o' || key == 'O'){
f.y = 1;
  }
  }

  void scene0() {
  background(175, 96, 26);
  fill(255, 112, 67);
  textSize(16);
  text("Touch 'o' to watch an apple fall from the sky", 130, 150);
  textSize(14);
  text("press 'g' to advance", 130, 500);
  drawTracktor();
  fill(205, 220, 57);
  f.display();
  f.fall();
  }
  void scene1() {
    background(153, 255, 255);
    fill(244, 81, 30);
    textSize(14);
    text("it's too cold, it's too bright, try to touch my light, to make it alright", 50, 150);
    textSize(14);
    text("press 'r' to advance", 130, 500);
    drawTracktor();
    if(mousePressed && mouseX > 488 && mouseX < 508 && mouseY > 365 && mouseY < 410){
    drawRects(100);
  }
  }
  void scene2() {
    background(229, 115, 115); 
    if(mousePressed){ 
    a.movement();
    delay(20);
    fill(0);
    textSize(16);
    text("I'M A COW, and i don't want to hear otherwise", 130, 150);
    }
    else{
    textSize(14);
    text("press 'o' to advance", 130, 500);
    text("FIRST press down, gain a friend", 100, 150);
    }
    
    drawTracktor();
}
    
  void scene3() {
    background(141, 110, 99);
    noStroke();
    fill(244, 143, 177);
    textSize(14);
    text("i'm pretty tired you see, so complete the word 'grow' with the last missing key", 20, 150 );
    text("click for a hint!", 150, 340);
    drawTracktor();
    if(mousePressed){ 
      text("it's a letter that doesn't rhyme with 'g'", width/2, 100 );

    }
 
  }
