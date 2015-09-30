# @param {Integer} num
# @return {Integer}

def add_digits(num)
  num_s = num.to_s
  if num_s.length < 2
    return num
  else
    return add_digits(num_s.split('').inject{ |sum, x| sum.to_i + x.to_i})
  end
end
