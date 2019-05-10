//create a class with at least 2 diff methods
//use input[mouse,keys] to change a variable in your class
//create instances of your class; a single object, an array of object, and
//an arraylist of objects

PImage lost;
PImage ugly;
fwog c, a, d, b, e, g, f, h, j, z;
 fwog [] prince = new fwog[10];
hart k,l,m,n,o,p,q,r,s,t,u;
hart[] grouplove ={l,m,n,o,p,q,r,s,t,u};


ArrayList<hart> myHearts;

void setup(){
  size(600,600);
  lost = loadImage("notafakepng.png");
  ugly = loadImage("realboi.png");
  k = new hart(0,250,lost);
  l = new hart(random(0, 600),random(50,500),lost);
  m = new hart(random(0, 600),random(50,500),lost);
  n = new hart(random(0, 600),random(50,500),lost);
  o = new hart(random(0, 600),random(50,500),lost);
  p = new hart(random(0, 600),random(50,500),lost);
  q = new hart(random(0, 600),random(50,500),lost);
  r = new hart(random(0, 600),random(50,500),lost);
  s = new hart(random(0, 600),random(50,500),lost);
  t = new hart(random(0, 600),random(50,500),lost);
  u = new hart(random(0, 600),random(50,500),lost);
  
myHearts = new ArrayList<hart>();
  for(int i =0; i <prince.length; i++){
    prince[i] = new fwog(i*20, i*5, ugly);
  }
  
  
  
  //c = new fwog(0, 150, ugly);
  //a = new fwog(0, 25, ugly);
  //d = new fwog(0, 50, ugly);
  //b = new fwog(0, 75, ugly);
  //e = new fwog(0,100,ugly);
  //g = new fwog(0,5,ugly);
  //f = new fwog(0,10,ugly);
  //h = new fwog(0,15, ugly);
  //j = new fwog(0,20,ugly);
  //z = new fwog(0,200,ugly);
  // for(int i = 0; i < grouplove.length; i++) {
  //   grouplove[i].display();
  // }
}

void draw(){
  background(244, 143, 177);
  smooth();
  noStroke();
  fill(255,0,0);



   fill(237, 187, 153);
   noStroke();
   rect(200,100,150,150); //head

   
   ellipse(375,323, 100, 30);
   quad(410,314,420,250,455,255,420,330);
   ellipse(175,323,100,30);
   quad(145,314,120,250,95,255,130,330);
   
   fill(255);
   rect(200,250,150,170);//body
   
   stroke(0);
   strokeWeight(2);
   triangle(200,250,250,250,225,290); //triangle collar left
   
   triangle(300,250,350,250,325,290); // triangle collar right
   
   fill(102,0,0); //burgundy
   triangle(275,300,250,370,300,370); //tie
   
  noStroke();
  fill(121, 85, 72);
  triangle(175,520,220,500,220,480); //left shoe
  triangle(370,520,330,500,330,480); //right shoe
   
   stroke(0);
   fill(161, 136, 127);
   rect(200,420,75,80);
   rect(275,420,75,80); //pants
   
  noFill();
  arc(275, 160, 80, 50, 0, PI); //how to make it a frown
  

  fill(255);
  quad(250, 180, 265, 185, 260, 205, 250, 210);
  quad(266, 186, 280, 186, 280, 210, 270, 210); 
  quad(283, 186, 296, 184, 298, 206, 288, 209);//teeth
  
 
  
  
  
  
//translate(mouseX - 50, mouseY - 50); //how to only have this work on the heart
fill(102,0,0); //burgundy
beginShape(TRIANGLE_STRIP); //start of tie like shape
vertex(240, 300); //bottom left point x-10, y+50
vertex(250, 250); //top left point
vertex(300, 250); //topright point
vertex(310, 300); //bottom right point x+10, y+50
endShape();
     
   fill(0); 
   ellipse(255, 160, 10,10);
   ellipse(300,160,10,10);
 
   stroke(0);
   line(230, 160, 260, 140); //left eyebrow
   line(320,160,290,140);    //right eyebrow
   strokeWeight(5);
 //i like the way its flickering, looks like tron
 
k.display();
   for(int i = 0; i<prince.length; i++){
     prince[i].display();
     prince[i].press();
   }
   for(int i = 0; i<myHearts.size(); i++){
     hart h = myHearts.get(i);
     h.display();
 // println (mouseX + ", " + mouseY);
   }

  
  //i used sketch 1 from my practice_test folder last semester
  //unsure of how to move the heart across the page 
  //goal is to have the hearts pop up on sketch slowly
  //when mouse hovers or clicks it the little dashes pop uo around it 
  //music playing in the back?
  //drawing from chalkzone 

//add function where there is an arrow and when you click it, it shoots itself
//make it so it follows the mouse 

//when u click on heart it has those vertical pop around it
//maybe switch from arrow to vertical lines

// can i condense any of these into classes?
}

void mousePressed(){
  //l.click();
  k.click();
  myHearts.add(new hart(mouseX, mouseY, lost));
}

void keyPressed(){
   if (key == 'u' || key == 'U') {
    //for(int i = 0; i < prince.length; i++) {
    //prince[i][0].display();
    //}  
}

}
