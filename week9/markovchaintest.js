window.onload = function(){ 
var txt = "He got angry and yelled at me.";
var order = 3; //you can adjust if you
//want bi grams or n grams
var ngrams = []
//make it an array 
function setup(){
noCanvas();

//loop through text //and look through
for(var i = 0; i < txt.length; i++){     //pull out tri gram, first one is h e _
    //this is done with substring
    var gram = txt.substring(i,i + 3);
        //0,3 would give me h e _
        //it should include 4 characters 
        //but the first is included and the last excluded
        //so 0,3 gives me thi 3 characters from 0,1,2
        //instead of setting substring to 0,3 we want 
        //i, i +3 because we want he_, e_g, _go, etc 
    ngrams.push(gram);
    }
    console.log(ngams);
}
}
