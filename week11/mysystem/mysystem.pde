//Pentigree L-System by Geraldine Sarmiento. 

//This code was based on Patrick Dwyer's L-System class.
PentigreeLSystem ps;

PImage dupe;

void setup() {
  size(400, 400 );
  ps = new PentigreeLSystem();
  ps.simulate(4);
  imageMode(CENTER);
  dupe = loadImage("dupe.jpg");
  image(dupe, 1000,10);
}

void draw() {
  ps.render();
  drawRect(width/2,height/2,60);
}

void drawRect(float x, float y, float d){
  
  stroke(0);
  line(x,y,d,d);
  if(d > 5) {
  drawRect(x+d/2, y, d/2);
}
}

//class inheritance 
//when we "extend" a class, we are taking all of the properties from that class 
//and using them in the parent class 
class PentigreeLSystem extends LSystem {

  int steps = 0;
  float somestep = 0.1;
  float xoff = 0.01;

  PentigreeLSystem() {
    axiom = "F-F-F-F-F";
    rule = "F-F++F+F-F-F";
    startLength = 80.0;
    theta = radians(67);  
    reset();
  }

  void useRule(String r_) {
    rule = r_;
  }

  void useAxiom(String a_) {
    axiom = a_;
  }

  void useLength(float l_) {
    startLength = l_;
  }

  void useTheta(float t_) {
    theta = radians(t_);
  }

  void reset() {
    production = axiom;
    drawLength = startLength;
    generations = 0;
  }

  int getAge() {
    return generations;
  }

  void render() {
    translate(width/2, height/2);
    steps += 3;          
    if (steps > production.length()) {
      steps = production.length();
    }

    for (int i = 0; i < steps; i++) {
      char step = production.charAt(i);
      if (step == 'F') {
        fill(255);
        stroke(66,73,120);
        line(0, 0, 0, -drawLength);
        translate(0, -drawLength);
      } 
      else if (step == '+') {
        rotate(theta);
      } 
      else if (step == '-') {
        rotate(-theta);
      } 
      else if (step == '[') {
        pushMatrix();
      } 
      else if (step == ']') {
        popMatrix();
      }
    }
  }

}
