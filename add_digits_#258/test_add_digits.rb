require './add_digits'
p 'Enter your input'
STDOUT.flush
num = gets.chomp
puts add_digits(num.to_i)
