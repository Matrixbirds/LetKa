# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
    @hash, @str_hash = {}, {}
    pattern.split("").map.with_index { |e, index| @hash[e] = index }
    str.split(" ").map.with_index { |e, index| @str_hash[e] = index }
    @hash.values == @str_hash.values
end
