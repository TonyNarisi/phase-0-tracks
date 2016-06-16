// array of four colors
// array of names of horses

var colors = ["blue", "green", "red", "yellow"];
var horseName = ["Ed", "Joe", "Frank", "Bob"];

colors.push("orange");
horseName.push("LeeRoy");

console.log(colors);
console.log(horseName);

// Create empty object
// IF colors array and horseName are equal length
// 

var nameAndColor = {}

if (colors.length == horseName.length){
  for (var i = 0; i < horseName.length; i++) {
    nameAndColor[horseName[i]] = colors[i];
  }
}

console.log(nameAndColor);


function Cars (color, speed, numberDoors) {
  this.color = color;
  this.speed = speed;
  this.numberDoors = numberDoors;
  this.horn = function() {console.log("Beep!");};
  console.log("New Car initialized");
}

var newCar = new Cars ("blue", 90, 4);
newCar.horn();
console.log(newCar);