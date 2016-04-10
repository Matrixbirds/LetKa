# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
    return false if n <= 0
    (3 ** (Math.log(n) / Math.log(3)).round) == n ? true : false
end
