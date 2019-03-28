<<<<<<< HEAD
ArrayList<Object> myObject;
//Object myObject;  //create arraylist
=======

Object myObject;  
>>>>>>> 2f7f6805b723e063ed9cded3a0110f21510b9468

void setup(){
  size(600, 600); 
  
<<<<<<< HEAD
  myObject = new ArrayList<Object>();
  //Object(width/2, height/2);
  myObject.add(new Object(width/2,height/2));
=======
  myObject = new Object(width/2, height/2); 
>>>>>>> 2f7f6805b723e063ed9cded3a0110f21510b9468
}

void draw(){
  background(255); 
  
<<<<<<< HEAD
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
=======
  PVector gravity = new PVector(0, .1*o.mass); 
  PVector wind = new PVector(0.1, 0); 

  myObject.move(); 
  myObject.checkBoundaries(); 
  myObject.display(); 
>>>>>>> 2f7f6805b723e063ed9cded3a0110f21510b9468
   
}

void mousePressed(){
<<<<<<< HEAD
  myObject.add(new Object(mouseX, mouseY));
=======
>>>>>>> 2f7f6805b723e063ed9cded3a0110f21510b9468

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
<<<<<<< HEAD
    pos.add(vel); //to change velocity you have to change acceleration
=======
    pos.add(vel); 
>>>>>>> 2f7f6805b723e063ed9cded3a0110f21510b9468
    
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
<<<<<<< HEAD
    accel.add(force); //adding force to acceleration
    //you use accel because it acts upon velocity
=======
>>>>>>> 2f7f6805b723e063ed9cded3a0110f21510b9468
    
  }
}
