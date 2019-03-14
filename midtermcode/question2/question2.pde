Object myObject; 

void setup(){
  size(600, 600); 
  
  myObject = new Object(); 
}

void draw(){
  background(255); 
  myObject.move(); 
  myObject.checkBoundaries(); 
  myObject.display(); 
}


class Object{
  PVector pos, vel, accel; 
  
  Object(){
    pos = new PVector(width/2, height/2); 
    vel = new PVector(0, 0); 
    
  }
  
  void move(){
    PVector mouse = new PVector(mouseX,mouseY);
    accel = PVector.sub(mouse,pos);
    
    //normalize your accel vector here
    mouse.normalize();
    vel.limit(4); 
    

    
    //basic movement vector addition here...
    vel.add(accel);
    pos.add(vel);
    //translate(mouseX - 50, mouseY - 50); //changes origin point of entire sketch
    //line(0,0,mouse.x,mouse.y); 
    
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(pos.x,pos.y,30,30);
  }
  
  void checkBoundaries(){
    //add logic here so when the ellipse gets to the edge of the 
    //it is positioned on the opposite side
if (pos.x > width) {
      pos.x = 0;
    } else if (pos.x < 0) {
      pos.x = width;
    }
    
    if (pos.y > height) {
     pos.y = 0;
    } else if (pos.y < 0) {
     pos.y = height;
    }

  }
}
