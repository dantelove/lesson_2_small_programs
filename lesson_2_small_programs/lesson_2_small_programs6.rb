# lesson_2_small_programs6.rb

# rock paper scissors

# my attempt to build the game before watching the walkthrough

player_score = 0
cpu_score = 0

puts "Welcome to Rock-Paper-Scissors Extraordinaire!"

loop do # main loop
  puts <<-MSG

    Type 'R' for Rock.
    Type 'P' for Paper.
    Type 'S' for Scissors.
    Type 'E' to exit
    MSG

  player_selection = gets.chomp

  player_selection.downcase!

  case player_selection
  when "r"
    puts "You've selected Rock!"
    player_selection = "Rock"
  when "p"
    puts "You've selected Paper!"
    player_selection = "Paper"
  when "s"
    puts "You've selected Scissors!"
    player_selection = "Scissors"
  when "e"
    break
  else
    puts "Please enter R, P, S, or E"
    redo
  end

  cpu_selection = rand(100)

  case cpu_selection
  when 0..32
    puts "The computer selects Rock!"
    cpu_selection = "Rock"
  when 33..65
    puts "The computer selects Paper!"
    cpu_selection = "Paper"
  when 66..99
    puts "The computer selects Scissors!"
    cpu_selection = "Scissors"
  end

  case [cpu_selection, player_selection]
  when ["Rock","Rock"], ["Paper","Paper"], ["Scissors","Scissors"]
    puts "TIE! You both choose #{cpu_selection}! Try Again."
    puts "---------------------------------"
    puts "Current Score: Player #{player_score}: CPU #{cpu_score}"
    puts "---------------------------------"
  when ["Paper","Rock"], ["Scissors", "Paper"], ["Rock","Scissors"]
    puts "You LOSE! #{cpu_selection} beats #{player_selection}!"
    cpu_score = cpu_score + 1
    puts "---------------------------------"
    puts "Current Score: Player #{player_score}: CPU #{cpu_score}"
    puts "---------------------------------"
  when  ["Scissors","Rock"], ["Rock","Paper"], ["Paper", "Scissors"]
    puts "You WIN! #{player_selection} beats #{cpu_selection}!"
    player_score = player_score + 1
    puts "---------------------------------"
    puts "Current Score: Player #{player_score}: CPU #{cpu_score}"
    puts "---------------------------------"
  end
end

puts "---------------------------------"
puts "FINAL SCORE: Player #{player_score}: CPU #{cpu_score}"
puts "---------------------------------"

  if player_score > cpu_score
    puts "YOU WIN!"
  else
    puts "Better luck next time. CPU WINS!"
  end

puts "Thanks for playing Rock, Paper, Scissors!"
