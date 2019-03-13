float radius; 
int scale = 5; //speed

void setup(){
  size(500, 500); 
  
}

void draw(){
  background(0); 
  text(printText(), width*.1, height*.1); 
    radius =  scale + radius; 
   if(radius >= 500){ 
     //radius greater than or equal to 250
     //when met at 250 
     //negate scale
     scale = -5; //multiply scale by -1 scale * = -1
   }
    else if(radius<=0){ //0 is the midpoint
      scale = 5; 
    }
    
     
     
  ellipse(width/2, height/2, radius, radius);  
  
}

String printText(){ //float is a number w decimal in front
  //variable
  String t;
 t = "String"; //quotations mean new
 if(scale == 5){ //scale > 0 
   t = "GROW";
 }
 else if(scale == -5){
   t = "SHRINK";
 }
  
  //return variable
  return t;
 
}
