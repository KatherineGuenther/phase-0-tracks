// Write a function that takes an array of strings and returns the longest
// Initialize the current longest to empty
// Iterate through the array, comparing the length of each string to the current longest
// If the current string is longer than current longest, update current longest
// Return current longest

function longest_string(strings) {

  var longest = "";

  for (idx = 0; idx < strings.length; idx++) {
    if (strings[idx].length > longest.length) {
      longest = strings[idx];
    }
  }

  return longest;
}

console.log(longest_string(["long phrase","longest phrase","longer phrase"]));
console.log(longest_string(["abcdef","abc","a"]));