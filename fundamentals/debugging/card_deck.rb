cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map! do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

puts sum


# The error in the code was a result of .map being called instead of .map! as a result, :ace was being added to 
# the remaining cards number and a symbol cannot be added to an integer. Using the .map! method allows the value
# to be transformed, making it an integer value through the score method. 

# Furthermore, the cards array initalized at the beginning of the program is used as the same value for each of 
# the suits in deck. As a result, each time a card is popped from the cards, it is popped from every set of cards 
# from each suit, as the they are all pointing to the same array object. The way to alter this would be to clone 
# the cards object so each key is now pointing to its own independent array of cards. 