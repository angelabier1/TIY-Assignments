class Blackjack
  attr_accessor :deck #this means we can interact with the instance variable @deck
  # and we can pretend it is a method: Blackjack.new.deck
  def initialize #this runs when Blackjack.new is called
    @deck = Deck.new
  end

  def hand
    @hand = hand
  end
end

class Deck
  attr_accessor :cards
  def initialize
    @cards = []

    values = [1..10,10,10,10,11]

    4.times do
      values.each do |value|
        @cards << value
      end
    end
  end

  def shuffled_cards
    @cards = @cards.shuffle!
  end

  def hand
    #card = cards.pop
  end
end

class Dealer
  #attr_accessor
  def initialize

  end
end