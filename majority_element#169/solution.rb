# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  h = Hash.new(0)
  majority = nums.size / 2
  h[:majority] = nums[0]
  nums.reduce(h) do |hash, num|
    hash[num] += 1
    hash[:majority] = num if hash[num] > majority
    hash
  end
  h[:majority]
end
