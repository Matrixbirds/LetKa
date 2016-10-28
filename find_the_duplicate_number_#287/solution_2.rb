# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  nums.inject(Hash.new(0)) { |hash, e| hash[e] += 1; hash}.select {|k, v| v > 1}.keys.sort
end
