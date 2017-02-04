# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  len = 0
  nums.each_with_index do |num, index|
    if index == 0 or nums[len-1] != num
      nums[len] = num
      len += 1
    end
  end
  len
end
