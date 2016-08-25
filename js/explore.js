// Define a function that takes a string and reverses it
// Declare an empty string
// Iterate through the input string from end to start
// Add each letter encountered to the empty string

function reverse(str) {
  var result = "";

  for (i = str.length - 1; i >= 0; i--) {
    result += str.charAt(i);
  }

  return result;
}

var reversedString = reverse("Hello world!");

if (reversedString.length > 5) {
  console.log(reversedString);
}
