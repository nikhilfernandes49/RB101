=begin
Build a program that displays when the user will retire and how many years she has to work till retirement.


What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
ret_age = gets.chomp.to_i

years_left = ret_age-age
current_time = Time.now

puts "It is #{current_time.year}. You will retire in #{current_time.year + years_left}."
puts "You have only #{years_left} years of work to go!"