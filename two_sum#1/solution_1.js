/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
  const hash = [];
  for (let [index, value] of nums.entries()) {
    if (Number.isInteger(hash[value])) {
      return [hash[value], index];
    }
    hash[target-value] = index;
  }
  return [];
};
