require 'minitest/autorun'
#require 'minitest/pride'
require './blackjack'

class TestBlackjack < MiniTest::Unit::TestCase
  #there's a deck of cards
   #there are 52 cards
   #there a 4 sets of 14 cards represented by 1-10,J, Q, K, A
    #cards 1..10 have the same corresponding values of 1..10.
    # J, Q, K each have a value of 10
    # A has a value of 11
  #there is one dealer
  #there are 1+ player(s)
  #the dealer deals a hand to each player and self.
    #a hand is 2 random cards from the deck
    #if a player's hand is less than 21, the player is given the option to hit or stay
      #if a player stays, the dealer moves to the next player.
      #if a player hits, the dealer deals one random card to the player.
        #if hand total equals 21, the dealer moves to next player
        #if hand total is greater than 21, the player busts
        #if hand total is less than 21, the player is given the option to hit or stay.(loop)
    #if a player's hand equals 21, the dealer moves to the next player and cards are analyzed.
  #the game ends when

  def setup #this runs before each test
    @blackjack = Blackjack.new
  end

  def test_blackjack_exists
    assert Blackjack.new
  end

  def test_deck_exists
    assert Blackjack.new.deck
  end

=begin
  def test_blackjack_deck_has_cards
    assert Game.new.grid.is_a? Array
    assert_equal Game.new.grid.length, 3
  end
=end
end