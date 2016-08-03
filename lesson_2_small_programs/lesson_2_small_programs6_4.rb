# lesson_2_small_programs6_4.rb
# rock_paper_scissors.rb
# Bonus Features

# Lizard Spock - Rock, Paper, Scissors
VALID_CHOICES = %w(r p s l S)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'r' && second == 's') ||
    (first == 'r' && second == 'l') ||
    (first == 'p' && second == 'r') ||
    (first == 'p' && second == 'S') ||
    (first == 's' && second == 'p')||
    (first == 's' && second == 'l')||
    (first == 'l' && second == 'S') ||
    (first == 'l' && second == 'p') ||
    (first == 'S' && second == 's') ||
    (first == 'S' && second == 'r')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You Won!")
  elsif win?(computer, player)
    prompt("Computer Won!")
  else
    prompt("It's a tie.")
  end
end

player_score = 
computer_score = 

loop do
  choice = ''
  loop do
    prompt("Type 'r' for Rock, 'p' for Paper, 's' for Scissors")
    prompt("'l' for Lizard, or 'S' for Spock")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  case choice
  when 'r'
    prompt("You chose Rock!")
  when 'p'
    prompt("You chose Paper!")
  when 's'
    prompt("You chose Scissors!")
  when 'l'
    prompt("You chose Lizard!")
  when 'S'
    prompt("You chose Spock!")
  end

  case computer_choice
  when 'r'
    prompt("Computer chose Rock!")
  when 'p'
    prompt("Computer chose Paper!")
  when 's'
    prompt("Computer chose Scissors!")
  when 'l'
    prompt("Computer chose Lizard!")
  when 'S'
    prompt("Computer chose Spock!")
  end

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_score = player_score + 1
  elsif win?(choice, computer_choice)
    computer_choice = computer_score + 1
  end

  prompt("Current Score: Player:#{player_score}, Computer:#{computer_score}")

  if player_score != 5 && computer_score != 5
    redo
  end

  player_score = 0
  computer_score = 0

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
