class fwog{
  float x;
  float y;
  PImage fwogboi; //this is a different image than the pImage in setup
  //only applies to class, the one in setup can be used for other things
  
  fwog(float tempX, float tempY, PImage tempPress){
    x= tempX;
    y= tempY;
    fwogboi= tempPress; //constructor
  } 
     
 void display(){
  image(ugly,x,y,75,75);
 }
 
 void press(){
   
   
  if (mouseX >= x && mouseX <= x+width && //checking whether the mouse is over the image
      mouseY >= y && mouseY <= y+height) {
    x = random(0,525); 
    y = random(0,525);
    display();
      println(x,y);
    }

 }
   
   
   
 }
