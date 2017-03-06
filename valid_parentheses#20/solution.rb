# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  map = { "[" => "]", "{" => "}", "(" => ")" }
  s.chars.each do |chr|
    if chr == '[' or chr == '{' or chr == '('
       stack.push chr
    elsif chr == ']' or chr == '}' or chr == ')'
      if map[stack.pop] != chr
        return false
      end
    end
  end
  stack.size == 0
end
