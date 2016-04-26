# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    cur = 0
    nums.each_with_index { |e, i| nums[cur], cur = nums[i], cur+1 if e != val }
    cur
end
