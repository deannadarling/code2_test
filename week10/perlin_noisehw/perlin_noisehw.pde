//most important topic for intro of random numbers
//create random in code that is smooth
//created texture for 3d models
//vase with marble like textures do u have to hand create that?
//can we just make an algorithm?

//pn is 
float t;
float stickies;
float noise;
PImage rest;



void setup(){
  size(500, 500);
  //background(87,66,219);
  stroke(73,143,88);
  noFill();
  imageMode(CENTER);
  rest = loadImage("rest.jpg");
  image(rest, 10,10);
  
 
}
//noise will always give you a value between 0 and 1.
//with perlin noise you create your own space. what moment of time
//create a variable
//use map function 

//we must move through time. all values in sequence for smoothness
//move slow.
void draw(){
  
  t = t + 0.05; //moving really big steps through time
  float x = noise(t);
  x = map(x,0,1,0,width); //remap the value of x 
  //(between 0 and 1) map between 0 and width
  text("LATE", x, height/2, 30,30);
  fill(0, 102, 153, 51);
  

  x++;

  line(0, stickies, x, noise); //the object moving
 
  noise = random(0, height);
  stickies = map(x, 0, 200, noise, height);
  
  
  
}
