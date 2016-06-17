// Finding longest word or phrase function
// Input: an array of words and/or phrases
// Steps:
//  - Save the first word/phrase as the "current longest"
//  - Push the first word/phrase into the array of the longest items
//  - Evaluate the second word/phrase
//  - If the length of the second word/phrase is longer than the length of the first word/phrase, save over the "current longest" with the second word/phrase, and push this word into the longest items array
//  - Repeat this process until every word/phrase in the array has been evaluated
//  - Loop through the longest items array
//    - For each word/phrase, if its length is less than the length of the "current longest" word, delete it from the array, and move the loop counting variable back by 1 to compensate for the shift in indices
//  - Return the array
// Output: the longest word(s) and/or phrase(s) in the array. This will be returned as an array to allow for ties

function findLongest(array) {
  var currentLongest = array[0];
  var longestItems = [array[0]]
  for (var i = 1; i < array.length; i++) {
    if (array[i].length >= currentLongest.length) {
      currentLongest = array[i];
      longestItems.push(array[i]);
    }
  }
  for (var n = 0; n < longestItems.length; n++) {
    if (longestItems[n].length < currentLongest.length) {
      longestItems.splice(n, 1)
      n -= 1
    }
  }
  return longestItems;
}

// Finding key-value pairs
// Input: two objects
// Steps:
//  - Begin with a default value for "matching pair" of false
//  - Loops through the keys of one object
//    - For each key, loop through other object to check if the key is shared
//    - If the key is shared, check to see if the value of the key is the same between the two objects
//    - If the value is the same, change the value of "matching pair" to true
// Output: true or false

function pairChecker(object1, object2) {
  var matchingPair = false;
  for (var i = 0; i < Object.keys(object1).length; i++) {
    for (var n = 0; n < Object.keys(object2).length; n++) {
      if (Object.keys(object1)[i] == Object.keys(object2)[n]) {
        if (object1[Object.keys(object1)[i]] == object2[Object.keys(object1)[i]]) {
          matchingPair = true;
        }
      }
    }
  }
  return matchingPair
}

// Generating random string
// Input: none
// Steps:
//  - Define a string with all letters of alphabet
//  - Define an empty string
//  - Generate a random number between 1 and 10 to determine the length of the string that will be generated
//  - Build a loop that will go from 1 to the random number just generated
//    - For each iteration, generate a random number between 0 and 25
//    - Add the character from the alphabet string located at the index of this randomly generated number to the string
// Output: a string

// Generating random test data
// Input: an integer
// Steps:
//  - Define an empty array
//  - Build a loop that will go from 1 to the integer specified by the input
//    - For each iteration, add the randomly generated string to the array
// Output: a randomly generated array with a length of the integer given for input

function randomString() {
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  var string = "";
  var stringLength = Math.floor((Math.random() * 10) + 1);
  for (var i = 1; i <= stringLength; i++) {
    string += alphabet[Math.floor((Math.random() * 25))];
  }
  return string;
}

function randomData(num) {
  var testStrings = [];
  for (var i = 1; i <= num; i++) {
    testStrings.push(randomString());
  }
  return testStrings;
}

// TESTS

// Release 0
console.log(findLongest(["long", "longest", "nope longest here", "longer"]));
console.log(findLongest(["first", "second aa", "third", "tied case", "tied also"]));
console.log(findLongest(["very long string", "not long", "but now this string is even longer", "oh no these strings are getting way too long"]))

// Release 1
// console.log(pairChecker({name: "Tyrese", age: 25}, {name: "Bill", age: 25}))
// console.log(pairChecker({age: 76, location: "New York"}, {location: "Pennsylvania", age: 76}))
// console.log(pairChecker({favePizza: "plain", location: "New York"}, {favePizza: "cheese", location: "Pennsylvania"}))

// Release 2
// for (var i = 1; i <= 10; i++) {
//   currentData = randomData(Math.floor(Math.random() * 15) + 1);
//   console.log(currentData);
//   console.log(findLongest(currentData));
// }