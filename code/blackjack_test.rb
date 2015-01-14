require 'minitest/autorun'
#require 'minitest/pride'
require './blackjack'

class TestBlackjack < MiniTest::Unit::TestCase
  #there's a deck of cards
   #there are 52 cards
   #there a 4 sets of 13 cards represented by 2-10,J, Q, K, A
    #cards 2..10 have the same corresponding values of 2..10.
    # J, Q, K each have a value of 10
    # A has a value of 11
      #Card values: 2,3,4,5,6,7,8,9,10,10,10,10,11 (13 Cards) * 4 Suits = 52 Cards
  #there is one dealer
    #dealer starts with empty hand
    #empty hand equals 0
  #there are 1+ player(s)
    #each player receives 2 cards from shuffled deck.
      # for each player "deal shuffled_cards.pop times 2"
        #hand total = 0, deal 2 cards, new hand total = sum of two dealt cards?
    #if a player's hand is less than 21, the player is given the option to hit or stay
      #if a player stays, the dealer moves to the next player.
      #if a player hits, the dealer deals one random card to the player.
        #if new hand total equals 21, the dealer moves to next player
        #if new hand total is greater than 21, the player busts
        #if new hand total is less than 21, the player is given the option to hit or stay.(loop)
    #if a player's hand equals 21, player has Blackjack and the dealer moves to the next player.
  #Dealer and each Player, play against each other -- compare Dealer's total to Player's total.
  #the game ends when there are no cards left in deck?

  #class Card
  #has a suit and a value
  #displaying a card should be a string, like "2 of Hearts" or "King of Spades"
  #in blackjack, teh value of jack/queen/king are all 10 and ace is 11


  #nouns: deck, dealer, player, hand,
  #verbs: deal, hit, stay, shuffle, bust



  def setup #this runs before each test
    @blackjack = Blackjack.new
  end

  def test_blackjack_exists
    assert @blackjack
  end

  def test_deck_exists
    assert @blackjack.deck
  end

  #def test_deal_method_returns_integer_from_deck
   # assert
  #end

  def test_hand_has_two_cards
    assert_equal 2, @blackjack.hand.length
  end

end

class TestDeck < MiniTest::Unit::TestCase

  def setup
    @deck = Blackjack.new.deck
  end

  def test_deck_has_52_cards
    assert_equal 52, @deck.cards.length
  end

  def test_shuffled_cards_not_equal_to_cards
    assert_equal false, @deck.cards == @deck.shuffled_cards
  end

end

class TestPlayer < Minitest::Unit::TestCase
  def setup
    @player = Blackjack.new.player
  end

  #def test_hand_dealt_has_2_cards
   # assert_equal 2, @player.hand.length
  #end
end

class TestDealer < MiniTest::Unit::TestCase

  def setup
    @dealer = Blackjack.new.dealer
  end

  def test_dealer_hand_total_equal_to_zero
    assert_equal true, @dealer.hand_total == 0
  end
end

