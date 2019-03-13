//Create a state machine with 4 different scenes using a switch. 
//(no example sketch, I'll just be looking to make sure your 
//switch is working properly)
int state = 0;

void setup(){
  size(600,600);
  rectMode(CENTER);
  
}

void draw(){
  switch(state){
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
    default:
    break;
  
}

println(mouseX, mouseY);
}

void keyPressed(){
  //switch(state)
}

void scene0(){
  background(234, 237, 237);
  fill(25, 111, 61); //green
  rect(400, 390, 200, 100); //body
  rect(265, 400, 80, 20); //connection
  fill(125, 60, 152);//purple
  ellipse(330, 450, 100, 100);
  ellipse(470, 450, 60, 60); //wheels
  fill(241, 196, 15); //yellow
  rect(200, 430, 100,20);
  rect(200, 400, 100, 20);
  rect(200, 370, 100, 20);//backload
  rect(395, 290, 100,100);//top square
  fill(125, 60, 152);//purple
  ellipse(155,460, 50,50);
  ellipse(240, 460, 50,50);
  
}
void scene1(){
  
  
}
void scene2(){
  
  
}
void scene3(){
  
  
}
