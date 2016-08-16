# lesson_4_larger_programs2.rb

# 21 - Card Game

FULL_DECK = { "two of hearts" => 2, "three of hearts" => 3, "four of hearts" => 4,
              "five of hearts" => 5, "six of hearts" => 6, "seven of hearts" => 7,
              "eight of hearts" => 8, "nine of hearts" => 9, "ten of hearts" => 10,
              "Jack of hearts" => 10, "Queen of hearts" =>10, "King of hearts "=> 10,
              "Ace of hearts" => [1, 11],
              "two of spades" => 2, "three of spades" => 3, "four of spades" => 4,
              "five of spades" => 5, "six of spades" => 6, "seven of spades" => 7,
              "eight of spades" => 8, "nine of spades" => 9, "ten of spades" => 10,
              "Jack of spades" => 10, "Queen of spades" =>10, "King of spades" => 10,
              "Ace of spades" => [1, 11],
              "two of diamonds" => 2, "three of diamonds" => 3, "four of diamonds" => 4,
              "five of diamonds" => 5, "six of diamonds" => 6, "seven of diamonds" => 7,
              "eight of diamonds" => 8, "nine of diamonds" => 9, "ten of diamonds" => 10,
              "Jack of diamonds" => 10, "Queen of diamonds" =>10, "King of diamonds" => 10,
              "Ace of diamonds" => [1, 11],
              "two of clubs" => 2, "three of clubs"=> 3, "four of clubs" => 4,
              "five of clubs" => 5, "six of clubs"=> 6, "seven of clubs" => 7,
              "eight of clubs" => 8, "nine of clubs"=> 9, "ten of clubs" => 10,
              "Jack of clubs" => 10, "Queen of clubs" => 10, "King of clubs" => 10,
              "Ace of clubs" => [1, 11] }.freeze

def initial_deal!(deck, recipient)
  2.times { recipient << deck.delete_at(rand(deck.length)) }
end

def display_players_initial_cards(cards)
  system "clear"
  puts "You were dealt the #{cards[0][0]} & the #{cards[1][0]}."
end

def display_dealers_card(cards)
  puts "The dealer shows a #{cards[0][0]}."
end

def display_dealers_partial_score(cards)
  puts "The Dealer's is showing a score of #{cards[0][1]}."
end

def dealt_an_ace?(cards)
  case cards[0]
  when /Ace/
    if current_score <= 10
      cards[0][0] = 11
    else
      cards[0][0] = 1
    end
  end
end

def current_score(cards)
  card_total = []

  cards.each do |value1, value2|
    card_total << value2
  end

  card_total.reduce(:+)
end

def display_players_score(cards) 
  puts "Your current Score is: #{current_score(cards)}."
end

def player_hit_or_stay(deck, recipient)
  loop do
    puts "Type 'H' to Hit or 'S' to Stay."
    answer = gets.chomp.downcase

    case answer
    when "h"
      recipient << deck.delete_at(rand(deck.length))
      display_players_additional_cards(recipient)
      display_players_score(recipient)

      if busted?(recipient)
        puts "You BUSTED! Dealer Wins"
        break
      elsif won?(recipient)
        puts "21! You Won!"
      else
        redo
      end

    when "s"
      break
    else
      puts "Please type H for 'Hit' or S for 'Stay'."
    end
  end
end

def display_players_additional_cards(cards)
  puts "You were dealt the #{cards.last[0]}."
end

def busted?(cards)
  true if current_score(cards) > 21
end

def won?(cards)
  true if current_score(cards) == 21
end

initialized_deck = FULL_DECK.to_a
players_cards = []
dealers_cards = []

initial_deal!(initialized_deck, players_cards)
initial_deal!(initialized_deck, dealers_cards)

display_players_initial_cards(players_cards)

display_players_score(players_cards)

display_dealers_card(dealers_cards)

player_hit_or_stay(initialized_deck, players_cards)
