class hart{
  float x;
  float y;
  PImage lost;
  
  hart(float tempX, float tempY, PImage tempClick){
    x= tempX;
    y= tempY;
    lost= tempClick; //constructor
  } 
     
 void display(){
  image(lost,x,y,75,75);
 }
 
 void click(){
   
   
  if (mouseX >= x && mouseX <= x+width && //checking whether the mouse is over the image
      mouseY >= y && mouseY <= y+height) {
    x = random(0,525); 
    y = random(0,525);
    display();
      println(x,y);
    }

 }
   
   
   
   //if(
   
   
   
   //compare
   //position of heart
   //position of mouse
   
   //when mouse is being clicked
   
   
 }
 
