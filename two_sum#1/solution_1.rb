# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  res, hash = nil, {}
  nums.each_with_index do |num, index|
    res ||= [hash[num], index] if hash[num]
    hash[target-num] = index
  end
  res
end
