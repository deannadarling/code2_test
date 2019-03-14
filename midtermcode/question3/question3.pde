ArrayList<Object> myObject;
//Object myObject;  //create arraylist

void setup(){
  size(600, 600); 
  
  myObject = new ArrayList<Object>();
  //Object(width/2, height/2);
  myObject.add(new Object(width/2,height/2));
}

void draw(){
  background(255); 
  
  for(int i = 0; i < myObject.size(); i++){ //call upon all in a loop
    
    Object deannaObject = myObject.get(i);
  //declaring deannaObject lets u call upon functions in the class
  
  
  PVector gravity = new PVector(0, .1*deannaObject.mass); 
  PVector wind = new PVector(0.1, 0); 

  deannaObject.move(); 
  deannaObject.checkBoundaries(); 
  deannaObject.display();
  deannaObject.addForce(gravity);
  deannaObject.addForce(wind);
  
  }
   
}

void mousePressed(){
  myObject.add(new Object(mouseX, mouseY));

}


class Object{
  PVector pos, vel, accel; 
  float mass; 
  
  Object(float x, float y){
    pos = new PVector(x, y); 
    vel = new PVector(0, 0); 
    accel = new PVector(0, 0); 
    
    mass = random(5, 20); 
  }
  
  void move(){
    vel.add(accel); 
    pos.add(vel); //to change velocity you have to change acceleration
    
    accel.mult(0); 
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(pos.x,pos.y,mass*3,mass*3);
  }
  
  void checkBoundaries() {
    if (pos.x > width) {
      pos.x = width;
      vel.x *= -1;
    } else if (pos.x < 0) {
      vel.x *= -1;
      pos.x = 0;
    }
 
    if (pos.y > height) {
      vel.y *= -1;
      pos.y = height;
    }
  } 
  
  void addForce(PVector force){
    accel.add(force); //adding force to acceleration
    //you use accel because it acts upon velocity
    
  }
}
