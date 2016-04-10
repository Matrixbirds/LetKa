# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
    n > 0 && (3 ** (Math.log(n) / Math.log(3)).round) == n
end
