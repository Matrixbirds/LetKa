# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
   c = 0
   total = 0
   nums.each do |num|
     c = [c, total = (num == 0 ? 0 : total + 1) ].max
   end
   c
end
