# @params{Integer[]} nums1
# @params{Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  (nums1 - (nums1 - nums2)).uniq
end
