// Write a function that takes an array of strings and returns the longest
// Initialize the current longest to empty
// Iterate through the array, comparing the length of each string to the current longest
// If the current string is longer than current longest, update current longest
// Return current longest

function longestString(strings) {

  var longest = "";

  for (idx = 0; idx < strings.length; idx++) {
    if (strings[idx].length > longest.length) {
      longest = strings[idx];
    }
  }

  return longest;
}

// Write a function that takes to objects and returns true if the objects share
// at least one key-value pair.  Otherwise return false.
// Iterate through the properties of the first object and look for an equivalent property in the second object.
// If a match is found, compare the values.  If the values are equal, return.  Otherwise return false.

function keyValueMatch(object1, object2){

  for (var property in object1) {
    if (object1[property] == object2[property]) {
      return true;
    }
  }

  return false
}

console.log(longestString(["long phrase","longest phrase","longer phrase"]));
console.log(longestString(["abcdef","abc","a"]));

var dog = {name: "Fido", age: 4, color: "black"};
var cat = {name: "Fluffy", age: 4, gender: "male"};
var car = {make: "Toyota", model: "Prius", color: "black"};

console.log(keyValueMatch(dog, cat));
console.log(keyValueMatch(car, cat));
console.log(keyValueMatch(dog, car));