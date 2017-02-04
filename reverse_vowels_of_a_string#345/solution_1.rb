# @param {String} s
# @return {String}


def reverse_vowels(s)
  s = s.chars
  is_vowels = ->(c) { %w[a e i o u A E I O U].include?(c) }

  p1, p2 = [0, s.length-1]
  while p1 < p2
    if is_vowels.(s[p1]) && is_vowels.(s[p2])
      s[p1], s[p2] = s[p2], s[p1]
      p1 += 1
      p2 -= 1
      next
    end
    if is_vowels.(s[p1]) && !is_vowels.(s[p2])
      p2 -= 1
    else
      p1 += 1
    end
  end
  s.join
end

