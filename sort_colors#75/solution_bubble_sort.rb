# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  (0...nums.size).each do |i|
    (i...nums.size).each do |j|
      if nums[i] > nums[j]
        nums[j], nums[i] = nums[i], nums[j]
      end
    end
  end
end
