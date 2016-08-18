# lesson_4_larger_programs3_4.rb

# Launchschool Solution to 21 assignment
# Bonus Features
# Keep Score - Declare Winner after 5 Points

require 'pry'

SUITS = ['H', 'D', 'S', 'C'].freeze
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10'] +
         ['J', 'Q', 'K', 'A'].freeze

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'],...]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i.zero? # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > 21
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(cards1, cards2)
  dealer_total = total(cards1)
  player_total = total(cards2)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(cards1, cards2)
  result = detect_result(cards1, cards2)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "--------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def end_of_round_output(cards1, cards2)
  puts "=============="
  prompt "Dealer has #{cards1}, for a total of: #{total(cards1)}"
  prompt "Player has #{cards2}, for a total of: #{total(cards2)}"
  puts "=============="
end

def display_score(score1, score2)
  puts "=============="
  prompt "Current Score: Dealer #{score1} - Player #{score2}"
  puts "=============="
end

loop do 
  dealer_score = 0
  player_score = 0

  loop do
    prompt "Welcome to Twenty-One!"

    # initialize vars
    deck = initialize_deck
    player_cards = []
    dealer_cards = []

    # initial deal
    2.times do
      player_cards << deck.pop
      dealer_cards << deck.pop
    end

    prompt "Dealer has #{dealer_cards[0]} and ?"
    prompt "You have: #{player_cards[0]} and #{player_cards[1]}"
    prompt "for a total of #{total(player_cards)}."

    # player turn
    loop do
      player_turn = nil
      loop do
        prompt "Would you like to (h)it or (s)tay?"
        player_turn = gets.chomp.downcase
        break if ['h', 's'].include?(player_turn)
        prompt "Sorry, must enter 'h' or 's'."
      end

      if player_turn == 'h'
        player_cards << deck.pop
        prompt "You chose to hit!"
        prompt "Your cards are now: #{player_cards}"
        prompt "Your total is now: #{total(player_cards)}"
      end

      break if player_turn == 's' || busted?(player_cards)
    end

    if busted?(player_cards)
      display_result(dealer_cards, player_cards)
      dealer_score += 1
      display_score(dealer_score, player_score)
    else
      prompt "You stayed at #{total(player_cards)}"
    end

    end_of_round_output(dealer_cards, player_cards)

    # dealer turn
    prompt "Dealer turn..."

    loop do
      break if busted?(dealer_cards) || total(dealer_cards) >= 17

      prompt "Dealer hits!"
      dealer_cards << deck.pop
      prompt "Dealer's cards are now: #{dealer_cards}"
    end

    dealer_total = total(dealer_cards)
    if busted?(dealer_cards)
      prompt "Dealer total is now: #{dealer_total}"
      display_result(dealer_cards, player_cards)
      player_score += 1
      display_score(dealer_score, player_score)
    else
      prompt "Dealer stays at #{dealer_total}"
    end

    # both player and dealer stays - compare cards
    end_of_round_output(dealer_cards, player_cards)

    case detect_result(dealer_cards, player_cards)
    when :player
      player_score += 1
    when :dealer
      dealer_score += 1
    end

    display_result(dealer_cards, player_cards)

    display_score(dealer_score, player_score)

    break if player_score == 5 || dealer_score == 5
  end

  break unless play_again?
end

prompt "Thank you for playing Twenty-One! Good bye!"
