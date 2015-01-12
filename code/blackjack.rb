class Blackjack
  attr_accessor :deck, :hand, :dealer #this means we can interact with the instance variable @deck
  # and we can pretend it is a method: Blackjack.new.deck
  def initialize #this runs when Blackjack.new is called
    @deck = Deck.new
    @dealer = Dealer.new
  end

 #def hand
  #  @hand = []
  #end
end

class Deck
  attr_accessor :cards, :shuffled_cards
  def initialize
    @cards = []

    values = [2,3,4,5,6,7,8,9,10,10,10,10,11]

    4.times do
      values.each do |value|
        @cards << value
      end
    end
  end

  def shuffle #shuffle cards. ! changes array.
    @shuffled_cards = @cards.shuffle
  end

 # def deal #remove one card from shuffled deck - possible to do yield twice to get two initial cards?
 #   @cards.pop
 # end
end

class Dealer
  attr_accessor :hand, :hand_total
  def initialize
    @hand = []
    @hand_total = 0
  end

  end
#end