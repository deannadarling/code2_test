String text = "you are twenty, and i am baby, you can learn, i can cry";

int order = 3; //pieces it will be cut into

int generatedTextLength = 100;

HashMap<String, ArrayList<String>>chain;
//HashMap> stores collection of objects

void setup(){
  size(600,600);
  chain = new HashMap<String, ArrayList<String>>();
  for (int i = 0; i<text.length() - order; i++){
    String gram = text.substring(i, i+order);
    //this substring marks where to start and end the cut
    ArrayList<String> dacharacters;
    if(!chain.containsKey(gram)){
      dacharacters = new ArrayList<String>();
    }else{
      dacharacters = chain.get(gram); 
     }
     dacharacters.add(text.substring(i+order, i+order+1));    
   }

}

void draw(){
  background(0);
  fill(255);
  textAlign(CENTER);
  text(result, width/4, height/4, width/2, height/4);
}

String result = " ";

void mousePressed(){
 String currentGram = text.substring(0, order);
 result = currentGram;
 for(int i = 0; i<generatedTextLength; i++);
  if(chain.containsKey(currentGram)){
   ArrayList<String> characters = chain.get(currentGram); 
   result += characters.get(round(random(characters.size()-1)));
   currentGram = result.substring(result.length()-order, result.length());
  }
 }
