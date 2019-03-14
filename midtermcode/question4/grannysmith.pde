class grannysmith{
  float x;
  float y;
  grannysmith(float tempX, float tempY){
   x= tempX;
   y= tempY;
    
}
void fall(){
  y+=5; //y is equal to y = y + 10 
}

void display(){
ellipse(x,y,10,10);
}
}
