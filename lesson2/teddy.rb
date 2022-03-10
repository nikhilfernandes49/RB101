=begin
Build a program that randomly generates and prints Teddy's age.
To get the age, you should generate a random number between 20 and 200.

puts "Teddy is #{rand(20..200)} years old!"

Modify this program to ask for a name, and then print the age for that person.
For an extra challenge, use "Teddy" as the name if no name is entered.
=end

puts "Hi, please enter your name"
name = gets.chomp
if name == ""
  puts "You must be a #{rand(20..200)} year old Teddy!"
else
  puts "Hi #{name.capitalize}! You must be #{rand(20..200)} years old"
end

