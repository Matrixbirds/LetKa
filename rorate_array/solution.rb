@result = []
def rorate_array(a, k)
    i = 0
    while i < a.length
        @result[(i+k) % a.length] = a[i]
        i += 1
    end
    @result
end

def rorate_array_in_place(a, k)
    len = a.length - 1
    key = k % len
    reverse(a, 0, len)
    reverse(a, 0, key - 1)
    reverse(a, key, len)
    a
end

def reverse(a, i, j)
    while i < j
        t = a[i]
        a[i] = a[j]
        a[j] = t
        i += 1
        j -= 1
    end
end

arr = [1, 9, 9, 5, 0, 6, 2, 9]
puts "array: #{arr}"
puts "array: #{rorate_array(arr, 2)}"

arr = [1, 9, 9, 5, 0, 6, 2, 9]
puts "array: #{arr}"
puts "array in place: #{rorate_array_in_place(arr, 2)}"
# arr.each do |i|
#     puts "step: #{i}, rorate: #{rorate_array(arr, i)}"
# end
