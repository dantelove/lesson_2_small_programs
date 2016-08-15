# lesson_4_larger_programs2.rb

# 21 - Card Game

FULL_DECK = { "one of hearts"=> 1, "two of hearts"=> 2, "three of hearts"=> 3, 
              "four of hearts"=> 4, "five of hearts"=> 5, "six of hearts"=> 6, 
              "seven of hearts"=> 7, "eight of hearts"=> 8, "nine of hearts"=> 9, 
              "ten of hearts"=> 10, "jack of hearts"=> 10, "Queen of hearts"=>10,
              "King of hearts"=> 10, "Ace of hearts"=> [1, 11],
              "one of spades"=> 1, "two of spades"=> 2, "three of spades"=> 3, 
              "four of spades"=> 4, "five of spades"=> 5, "six of spades"=> 6, 
              "seven of spades"=> 7, "eight of spades"=> 8, "nine of spades"=> 9, 
              "ten of spades"=> 10, "jack of spades"=> 10, "Queen of spades"=>10,
              "King of spades"=> 10, "Ace of spades"=> [1, 11],
              "one of diamonds"=> 1, "two of diamonds"=> 2, "three of diamonds"=> 3, 
              "four of diamonds"=> 4, "five of diamonds"=> 5, "six of diamonds"=> 6, 
              "seven of diamonds"=> 7, "eight of diamonds"=> 8, "nine of diamonds"=> 9, 
              "ten of diamonds"=> 10, "jack of diamonds"=> 10, "Queen of diamonds"=>10,
              "King of diamonds"=> 10, "Ace of diamonds"=> [1, 11],
              "one of clubs"=> 1, "two of clubs"=> 2, "three of clubs"=> 3, 
              "four of clubs"=> 4, "five of clubs"=> 5, "six of clubs"=> 6, 
              "seven of clubs"=> 7, "eight of clubs"=> 8, "nine of clubs"=> 9, 
              "ten of clubs"=> 10, "jack of clubs"=> 10, "Queen of clubs"=>10,
              "King of clubs"=> 10, "Ace of clubs"=> [1, 11] }

def initial_deal!(deck, recipient)
  2.times { recipient << deck.delete_at(rand(deck.length)) }
end

def display_players_cards(cards)
  puts "You were dealt the #{cards[0][0]} and the #{cards[1][0]}."
end

def display_score(cards)
  puts "Your current Score is: #{cards[0][1] + cards[1][1]}."
end

initialized_deck = FULL_DECK.to_a
players_cards = []
dealers_cards = []

initial_deal!(initialized_deck, players_cards)
initial_deal!(initialized_deck, dealers_cards)

display_players_cards(players_cards)

display_score(players_cards)