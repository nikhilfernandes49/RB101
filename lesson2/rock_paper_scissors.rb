=begin
In this assignment, we'll build a Rock Paper Scissors game.
The game flow should go like this:

the user makes a choice
the computer makes a choice
the winner is displayed

=end

VALID_CHOICES = %w(rock paper scissors)

choice = ""

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock')  ||
    (first == 'scissors' && second == 'paper')
end

def display_results(user_choice, comp_choice)
  if win?(user_choice, comp_choice)
    "You won!"
  elsif win?(comp_choice, user_choice)
    "You lose!"
  else "It's a tie!"
  end
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      puts "That does not look like a valid choice. Try again."
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}. Computer chose #{computer_choice}")

  prompt("#{display_results(choice, computer_choice)}")

  prompt("Want to play again?")
  break unless gets.chomp.downcase.start_with?('y')
end

prompt("Thank you for playing")
