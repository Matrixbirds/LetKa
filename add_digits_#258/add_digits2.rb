# @param {Integer} num
# @return {Integer}

def add_digits(num)
  num_s = num.to_s
  if num_s.length < 2
    return num
  else
    return add_digits num_s.split('').map(&:to_i).reduce &:+
  end
end
