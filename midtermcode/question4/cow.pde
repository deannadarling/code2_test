class cow{
  float x = 10; 
  float speed = 5;
  int direction = 1;
 cow(float tempX, float tempSpeed, int tempDirection){
   x = tempX;
   speed = tempSpeed;
   direction = tempDirection;
  
}
void movement(){
    x = x + speed * direction;
  if (x > width - 10 || x < 10) {
    //
    direction = -direction;
}
    fill(255);
    stroke(0);
    strokeWeight(5);
    rect (x, 550, 75, 75, 7); //body
    noStroke();
    fill(0);
    rect(x, 530,25,25,6);
    rect(x,530,25,25,6);//eyes
    fill(255);
    ellipse(x,530, 5, 15);
    ellipse(x,530,5, 15);//pupils
    fill(251, 233, 231);
    rect (x, 540, 25, 25, 7); 
}
}
