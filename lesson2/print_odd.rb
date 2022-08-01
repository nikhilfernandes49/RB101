#Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

=begin
iterate a range from 1 to 100
if the number is odd, print it


(1..100).each do |num|
  p num if num.odd?
end
=end

1.upto(100) do |num|
  p num if num % 2 != 0
end