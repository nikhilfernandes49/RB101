=begin
Create a simple tip calculator. The program should prompt for a bill amount and
a tip rate. The program must compute the tip and then display both the tip and
the total amount of the bill.

Example:
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end

puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip = gets.chomp.to_f
tip /= 100

total = bill += (tip*bill)
#%[flags][width][.precision]type
=begin
format("$%0.5f", total.to_f)
=end
puts "The total is #{total}"