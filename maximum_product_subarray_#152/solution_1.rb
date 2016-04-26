# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
    max = min = ref = nums.first
    nums.last(nums.length-1).each do |e|
        tmp = max
        max = [[max * e, min * e].max, e].max
        min = [[tmp * e, min * e].min, e].min
        ref = [ref, max].max;
    end
    ref
end
