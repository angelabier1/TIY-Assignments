class Card
  attr_accessor :suit, :value

  def initialize(suit,value)
    @suit = suit
    @value = value
  end

  def display_card
    "#{@value} of #{suit}"
  end