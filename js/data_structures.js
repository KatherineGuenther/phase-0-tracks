var horse_names = ["Ed", "Secretariat", "Mike", "Roger"];
var colors = ["red", "blue", "yellow", "green"];

colors.push("purple");
horse_names.push("Jennifer");

//Create a new OBJECT that takes COLORS as PROPERTIES, and HORSE_NAMES as values
//should take any number of elements as long as two arrays match in LENGTH.

var horses = {};

//Setting counter (index) to 0, while the counter is less then the array .length, we increment +1;
//setting our empty object to include property HORSE_NAME(at its index) with corresponding value COLORS at 
//index.

for (var index = 0; index < horse_names.length; index ++) {
  horses[horse_names[index]] = colors[index];
}

console.log(horses);


//Write constructor function for a CAR.
//Give it a few properties (MAKE, MODEL, YEAR)
// Give it at least one function()
// Create a few cars with it.

//var car = {make: , model: , year: };

function Car(make, model, year) {
  this.make = make;
  this.model = model;
  this.year = year;

  this.honk = function() { console.log("*HONK HONK*"); };

  console.log("CAR INITIALIZATION COMPLETE");
}

var another_car = new Car("Toyota", "Yaris", 2009);
console.log(another_car);
another_car.honk(); 

var yet_another_car = new Car("Toyota", "RAV4", 2006);
console.log(yet_another_car);
yet_another_car.honk();