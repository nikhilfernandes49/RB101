#ask the user for two numbers
#ask the user for the operation to perform
#perform the operation on the two numbers
#output the result

#answer = Kernel.gets()
#Kernel.puts(answer)

Kernel.puts("Welcome to Calculator!")

Kernel.puts("What is your first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What is your second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("The first number is " + number1 + " And the second number is " + number2)

Kernel.puts("What action would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = gets().chomp()

if operator == "1"
  result = number1.to_i() + number2.to_i()
elsif operator == "2"
  result = number1.to_i() - number2.to_i()
elsif operator == "3"
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{result}")