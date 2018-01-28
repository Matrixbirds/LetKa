'use strict';

function maxSubArray(nums) {
  let largest = nums[0];
  let sum = nums[0];
  for (let i = 1; i < nums.length; i++) {
    largest = Math.max(nums[i], largest + nums[i]);
    sum = Math.max(largest, sum);
  }
  return sum;
}

const subarray = maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]);
console.log("subarray:    ", subarray);
