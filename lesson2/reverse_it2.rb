=begin
Write a method that takes one argument, a string containing one or more words,
and returnsthe given string with words that contain five or more characters
reversed.
Each string will consist of only letters and spaces.
Spaces should be included only when more than one word is present.

put all the words into an array using split
if the element in the array has more than 4 characters, reverse it

iterating:
iterate over the array, selecting all elements with 5+ characters

reversing
reverse each string
=end

def reverse_words(string)
  arr = string.split
  arr.each do |element|
    element.reverse! if element.length > 4
  end
  arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
