=begin
Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

=end
(1..99).each do |int|
  p int if int.even?
end

