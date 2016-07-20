# lesson_2_small_programs6.rb

# rock paper scissors

# my attempt to build the game before watching the walkthrough

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
    cpu_selection = "Scissors"
  when 66..99
    puts "The computer selects Scissors!"
    cpu_selection = "Scissors"
  end

  case [cpu_selection, player_selection]
  when ["Rock","Rock"]
    puts "TIE! You both choose Rock! Try Again."
  when ["Paper","Rock"]
    puts "You Lose! Paper beats Rock!"
  when  ["Scissors","Rock"]
    puts "You Win! Rock beats Scissors!"
  when ["Rock","Paper"]
    puts "You Win! Paper beats Rock!"
  when  ["Paper","Paper"]
    puts "TIE! You both choose Paper! Try Again."
  when ["Scissors", "Paper"]
    puts "You Lose! Scissors beats Paper!"
  when ["Rock","Scissors"]
    puts "You Lose! Rock beats Scissors!"
  when ["Paper", "Scissors"]
    puts "You Win! Scissors beats Paper!"
  when ["Scissors","Scissors"]
    puts "TIE! You both choose Scissors! Try Again."
  end
end

puts "Thanks for playing Rock, Paper, Scissors!"
