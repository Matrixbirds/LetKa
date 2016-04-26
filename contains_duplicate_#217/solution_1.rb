# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    return false if nums.length <= 1
    catch(:done) {
      nums.inject(Hash.new(0)) {|hash, e| hash[e] += 1; throw(:done, nil) if hash[e] > 1 ;hash}
      return false
    }
    return true
end
