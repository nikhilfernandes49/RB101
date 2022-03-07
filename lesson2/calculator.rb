# ask the user for 2 numbers
# ask the user for an operation to perform
# perform the operation on the 2 numbers
# output the result
LANGUAGE = 'es'
require "yaml"
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='es')
  MESSAGES[lang][message]
end


def prompt(key)
  message = messages(key, LANGUAGE)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operator_to_message(choice)
  case choice
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

name = ''
number1 = ''
number2 = ''
operator = ''

prompt('welcome')
loop do
  name = gets.chomp
  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

prompt("name")

loop do #main loop
  loop do
    prompt("second_number")
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt('valid_number')
    end
  end

  loop do
    prompt("second_number")
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt('valid_number')
    end
  end

  operator_prompt = <<-MSG
  Choose an operator:
  1) Addition
  2) Subtraction
  3) Multiplication
  4) Division
  MSG

  prompt(operator_prompt)

  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose either 1, 2, 3, or 4")
    end
  end

  prompt("#{operator_to_message(operator)} the two numbers...")

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

  prompt("The result is #{result}")

  prompt('run_again')
  answer = gets.chomp.downcase
  break unless answer.downcase.start_with?('y')

end

prompt('thank_you')
