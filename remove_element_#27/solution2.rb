# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.reduce(0) { |cur, e| nums[cur], cur = e, cur+1 if e != val; cur}
end
