class Deck
  SUITS = ['♠', '♣', '♥', '♦']
  VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
  
  def pop
  end

  def build
    @deck = []
    SUITS.each do |suit|
    VALUES.each do |value|
        @deck.push(Card.new(suit, value))
      end
    end
  end

  def shuffle
    @deck.shuffle
  end

  def build_and_shuffle
    build
    shuffle
  end
end

class Card
   def initialize(suit, value)
    @suit = suit
    @value = value
  end

end

class Hand
  def initialize(deck)
    @deck = deck
    @cards = []
    start_hand 
  end

  def start_hand
    2.times {@cards << @deck.pop}
  end

  def display_hand
    @cards.suit
    @cards.value
  end
  
  def hit(card)
  end

  def stay
  end

  def score
  end

  def busted?
  end
end

class Game
  def initialize
    @deck = Deck.new
  end

  def deal_hand
    @deck.build_and_shuffle
    @player_hand = Hand.new(@deck)
    @dealer_hand = Hand.new(@deck)
  end
end


game = Game.new
game.deal_hand
