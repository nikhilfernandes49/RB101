number1 = nil
number2 = nil
operator = nil

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  number.to_i != 0
end

def operator_to_message(op)
  case op
  when '1'
    "Adding"
  when '2'
    "Subtracting"
  when '3'
    "Multiplying"
  when '4'
    "Dividing"
  end
end

prompt "Welcome to Calculator! Please enter your name"
name = nil
loop do
  name = gets.chomp
  if name.empty?
    prompt "Please enter a valid name"
  else
    prompt "Hi, #{name}"
    break
  end
end

loop do # main loop
  loop do
    prompt "What is your first number?"
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt "Hmm, that does not look right. Please choose a valid number."
    end
  end

  loop do
    prompt "What is your second number?"
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt "Hmm, that does not look right. Please choose a valid number."
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) Addition
  2) Subtraction
  3) Multiplication
  4) Division
  MSG
  prompt(operator_prompt)

  loop do
    operator = gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt "Please enter 1, 2, 3, or 4"
    end
  end

  prompt "#{operator_to_message(operator)} the two numbers..."

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt "The result is #{result}"

  prompt "Would you like to perform another calculation? (Y to calculate again)"
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for using calculator. Goodbye!"
