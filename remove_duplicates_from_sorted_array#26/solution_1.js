/**
 * @param {number[]} nums
 * @return {number}
 */
var removeDuplicates = function(nums) {
  let len = 0;
  for(let i = 0; i < nums.length; i++) {
    if (!i || nums[len-1] != nums[i]) {
      nums[len++] = nums[i];
    }
  }
  return len;
};
