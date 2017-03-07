# @param {Integer[]} find_nums
# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_element(find_nums, nums)
    stack = []
    map = {}
    nums.each do |num|
         while stack.size != 0 && stack[-1] < num
            map[stack.pop] = num
         end
        stack << num
    end
    res = []
    find_nums.each do |num|
        res << map.fetch(num, -1)
    end
    res
end
