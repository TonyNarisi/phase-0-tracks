// Finding longest word or phrase function
// Input: an array of words and/or phrases
// Steps:
//  - Save the first word/phrase as the "current longest"
//  - Evaluate the second word/phrase
//  - If the length of the second word/phrase is longer than the length of the first word/phrase, save over the "current longest" with the second word/phrase
//  - Repeat this process until every word/phrase in the array has been evaluated
// Output: the longest word or phrase in the array

function findLongest(array) {
  var currentLongest = array[0];
  for (var i = 1; i < array.length; i++) {
    if (array[i].length > currentLongest.length) {
      currentLongest = array[i];
    }
  }
  return currentLongest;
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

// TESTS

console.log(findLongest(["long", "longer", "longest"]));
console.log(findLongest(["first", "second", "third"]));
console.log(findLongest(["very long string", "not long", "but now this string is even longer"]))

console.log(pairChecker({name: "Tyrese", age: 25}, {name: "Bill", age: 25}))
console.log(pairChecker({age: 76, location: "New York"}, {location: "Pennsylvania", age: 76}))
console.log(pairChecker({favePizza: "plain", location: "New York"}, {favePizza: "cheese", location: "Pennsylvania"}))