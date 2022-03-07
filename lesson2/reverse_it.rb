=begin
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.
Put the string into an array
reverse the array
iterate over each element of the array, putting them into a string
=end


def reverse_sentence(string)
  new_str = ""
  arr = string.split(' ').reverse.join(' ')
  arr
end





puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
