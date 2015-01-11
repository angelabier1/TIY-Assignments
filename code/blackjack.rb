class Blackjack
  attr_accessor :deck #this means we can interact with the instance variable @deck
  # and we can pretend it is a method: Blackjack.new.deck
  def initialize #this runs when Blackjack.new is called
    @deck = {{ }}
  end
end