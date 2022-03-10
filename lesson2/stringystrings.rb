=begin
Write a method that takes one argument, a positive integer, and returns
a string of alternating 1s and 0s, always starting with 1. The length of
the string should match the given integer.

You are given a number
make an array with as many elements as the number

iterate over all elements
for an odd element make it 1
  for an even element, make it 0
    then arr.join


def stringy(integer)
  arr = Array.new(integer) { |num| num.to_i }
  arr = arr.map { |x| x + 1 }

  arr = arr.map do |num|
    if num.odd?
      num = 1
    else
      num = 0
    end
  end

  arr.join
end

=end

def stringy(size, optional = 1)
  numbers = []

  if optional == 1
    size.times do |index|
      number = index.even? ? 1 : 0
      numbers << number
    end
  else
    size.times do |index|
      number = index.even? ? 0 : 1
      numbers << number
    end
  end

 numbers.join
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'

