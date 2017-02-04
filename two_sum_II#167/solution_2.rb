# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
LESSTHAN = -1
GREATER = 1
EQUAL = 0

def two_sum(numbers, target)
  p1, p2 = [0, numbers.length-1]
  catch(:done) {
      while p1 < p2
          case ((numbers[p1] + numbers[p2]) <=> target)
          when LESSTHAN then p1 += 1
          when GREATER then p2 -=1
          when EQUAL then throw(:done, [p1+1, p2+1])
          end
      end
  }
end

