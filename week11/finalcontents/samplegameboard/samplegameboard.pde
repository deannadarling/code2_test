Cell [] grid;
 
int unit = 200; // size of one tile
 
int wideCount ;
int highCount ;
 
String[] list = {"b", "c", "d", "QQ"}; 
 
// ---------------------------------------------------------
 
void setup() {  
  size(400, 400);
 
  noStroke();
  background(255);
  int count;
  wideCount = width / unit; 
  highCount = height / unit; 
  count = wideCount * highCount;
 
 
 
  grid = new Cell[count];
 
  int index = 0;
  int k=0; 
  for (int x=0; x< wideCount; x++) {
    for (int y=0; y< highCount; y++) {
      //start creating objects
      grid[index] = new Cell (x*unit, y*unit, unit, list[k]);
      index++;
      k++;
    }
  }
}
//
void draw() {
  //
  background(255);
  int index = 0;
  //
  for (int x=0; x< wideCount; x++) {
    for (int y=0; y< highCount; y++) {
      grid[index++].display();
    }
  }
}
 
// ========================================================================
// and the class
 
 
class Cell {
  float x, y;
  float side;
  String text=""; 
  //  int col;
 
  Cell (float tempX, float tempY, 
    float tempSide, 
    String tempText) {
    x = tempX;
    y = tempY;
    side = tempSide;
    text = tempText; 
    //
    float fate = random(2);
  }
 
  void display() {
    if (mouseX>x&&mouseX<x+side&&mouseY>y&&mouseY<y+side)
      fill(122, 0, 0); // dark
    else
      fill(255, 0, 0);  // light 
    stroke(255);
    rect (x, y, side, side);
 
    fill(255); 
    text(text, x+55, y+60);
  }
}
