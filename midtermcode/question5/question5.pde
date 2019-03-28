float r; 
color bgColor; 
Table data;
int R;
int G;
int B;

void setup(){
  size(600, 600);
 data = loadTable("color5.csv", "header");

}

void draw(){
  background(bgColor); 
<<<<<<< HEAD
  text("background # : " + bgColor, 100, 100); 
=======
  text("back ground # : " + bgColor, 100, 100); 
>>>>>>> 2f7f6805b723e063ed9cded3a0110f21510b9468
  R = int(random(255));
  G = int(random(255));
  B = int(random(255));
}

void mousePressed(){
  bgColor = color(random(0,255), random(0,255), random(0,255)); 
  ellipse(mouseX, mouseY, 50, 50);
  TableRow newRow = data.addRow();
  newRow.setInt("R", R);
  newRow.setInt("G", G);
  newRow.setInt("B", B);
  
  saveTable(data, "data/color5.csv");
}
