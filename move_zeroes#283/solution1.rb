# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  n = 0
  nums.each do |num|
    if num != 0
      nums[n] = num
      n += 1
    end
  end

  (n..nums.size-1).each do |item|
    nums[item] = 0
  end
end
