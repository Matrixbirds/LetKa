# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    @pos_sum = s.split("").inject(Hash.new(0)) {|hash, e| hash[e] += 1; hash}.to_a.sort
    @pos_sum2 = t.split("").inject(Hash.new(0)) {|hash, e| hash[e] += 1; hash}.to_a.sort
    @pos_sum == @pos_sum2
end
