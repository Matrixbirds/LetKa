/**
 * @param {number[]} numbers
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(numbers, target) {
   let [p1, p2] = [0, numbers.length-1];
   while (p1 < p2) {
     let sum = numbers[p1] + numbers[p2];
     if (sum < target) {
       p1++;
     }
     else if (sum > target) {
       p2--;
     }
     else {
       return [++p1, ++p2];
     }
   }
};
