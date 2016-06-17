// PSEUDOCODE
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

console.log(findLongest(["long", "longer", "longest"]));
console.log(findLongest(["first", "second", "third"]));
console.log(findLongest(["very long string", "not long", "but now this string is even longer"]))