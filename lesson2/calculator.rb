#ask the user for 2 numbers
#ask the user for an operation to perform
#perform the operation on the 2 numbers
#output the result

Kernel.puts('Welcome to Calculator!')
Kernel.puts("What's your first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's your second number?")
number2 = Kernel.gets().chomp()

puts "Choose an operator: 1) Addition, 2) Subtraction, 3) Multiplication,
      4) Division"
operator = gets.chomp

if operator == '1'
  puts "the result is #{number1.to_i + number2.to_i}"
elsif operator == '2'
  puts "the result is #{number1.to_i - number2.to_i}"
elsif operator == '3'
  puts "the result is #{number1.to_i * number2.to_i}"
else
  puts "the result is #{number1.to_f / number2.to_f}"
end
