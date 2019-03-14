Table table; //built in processing class for a table

//start loading table


void setup(){
//assign a value to table
  size(displayWidth, displayHeight);
  table = loadTable("nyWeather.csv", "header");
//built into processing, looking for table

  //look into table and exclude header, getting row count
 numRows = table.getRowCount();

}

//set up a for loop to push data into arrays

//largest high
//lowest peak

//i'm having trouble with this, i believe its because of how i was trying to put data inside folder
