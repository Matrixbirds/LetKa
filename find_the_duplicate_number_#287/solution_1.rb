# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
    result = nums.inject(Hash.new {0}) { |h, e| h[e] += 1; h }
    result.each {|k, v| return k if v >= 2 }
end
