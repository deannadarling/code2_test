int order = 3 ;
String txt;
ArrayList<String> ngrams;  
int gramCounter;

void setup() {
  // initaialize the array list that will store the 'grams'.
  ngrams = new ArrayList<String>();
  // the source text (wikipedia)
  txt = "The unicorn is a legendary creature that has been described since antiquity as a beast with a single large, pointed, spiraling horn projecting from its forehead. The unicorn was depicted in ancient seals of the Indus Valley Civilization and was mentioned by the ancient Greeks in accounts of natural history by various writers, including Ctesias, Strabo, Pliny the Younger, and Aelian. The Bible also describes an animal, the re'em, which some versions translate as unicorn.";

  // loop over each character of the text 
  for (int i = 0; i <= txt.length() - order - 1; i++) {
    // extract/create grams of length 'order' using .substring method on the source.
    String gram = txt.substring(i, i + order); 
    if (!ngrams.contains(gram)) {
      // gram += txt.charAt(i + order); // adds the next character to the current 'gram' (if hapax).
      // ngrams.add(txt.substring(i + order)); // add next character (has to be a string, because arraylist of type string)
      gramCounter = 1;
    } else {
      // gram += txt.charAt(i + order); // adds the next character to the current (if > 1 occurence) 'gram'
      gramCounter += 1;
    }
    ngrams.add(gram);
    print(gram, gramCounter, "\n");
  }
}
