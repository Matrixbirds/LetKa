# @param {Integer[]} nums
# # @param {Integer} target
# # @return {Integer[]}
def search_range(nums, target)
  pos = [-1, -1]
  stack = []
  nums.each_with_index do |num, i|
    if num == target
      if stack.size == 0
        stack = [i, i]
      elsif stack.size == 2
        stack.pop
        stack << i
      end
    end
  end
  stack.size == 0 ? pos : stack
end
