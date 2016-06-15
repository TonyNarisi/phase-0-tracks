// PSEUDOCODE

// Function to Reverse a String
//  Input: A string
//  Steps:
//    - An empty string will be created
//    - The function will loop through the letters in the string, beginning with the last letter
//    - Going backwards from the last letter to the first, each character in the string will be added to the string that started as empty
//      - The string will be saved in its new form each time a new character is added to it
//    - The function will return the new string
//  Output: A new string

function reverse(str) {
  var new_str = "";
  for (var i = str.length - 1; i >= 0; i -= 1) {
    new_str = new_str + str[i];
  }
  return new_str;
}

// DRIVER CODE

// Test function
// console.log(reverse("Here is a test case."));

// Store result of function as a variable
reversed_str = reverse("Test case string");

// Print reversed string to console using conditional statement
if (1 + 1 === 2) {
  console.log(reversed_str);
} else {
  console.log("Um, I think something went wrong here.");
}