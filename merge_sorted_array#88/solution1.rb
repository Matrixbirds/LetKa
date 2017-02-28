# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  p1, p2 = m-1, n-1
  k = m+n-1
  while p1 >= 0 && p2 >= 0
    if nums1[p1] > nums2[p2]
      nums1[k] = nums1[p1]
      p1 -= 1
    else nums1[p1] < nums2[p2]
      nums1[k] = nums2[p2]
      p2 -= 1
    end
    k -= 1
  end
  
  while p1 >= 0
    nums1[k] = nums1[p1]
    k -= 1
    p1 -= 1
  end
  
  while p2 >= 0
    nums1[k] = nums2[p2]
    k -= 1
    p2 -= 1
  end
end
