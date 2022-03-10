=begin
Write a method that takes one argument, a positive integer, and
returns the sum of its digits.

Take the number and turn it into a string
then separate the characters of the string
turn the characters back into numbers and then add them

def sum(digits)
  arr = digits.to_s.chars
  arr = arr.map { |char| char.to_i }
  arr.sum
end

sum(23)

For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

=end

def sum(number)
  number.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
