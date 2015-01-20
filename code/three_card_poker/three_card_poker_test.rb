require 'minitest/autorun'
require './three_card_poker'
require './card_test'
require './player_test'
require './deck_test'
require './hand_test'
require './dealer_test'

class ThreeCardPokerTest < MiniTest::Unit::TestCase

	def setup
		@game = ThreeCardPoker.new
	end

	def test_game_has_a_player
		assert @game.player
	end

	def test_game_has_a_dealer
		assert @game.dealer
	end

  def test_player_starts_with_3_cards_from_deck
		assert_equal 3, @game.player.hand.size
  end

	def test_dealer_starts_with_3_cards_from_deck
		assert_equal 3, @game.dealer.hand.size
	end

	def test_player_dealt_straight_wins_if_dealer_has_pair
		deck = Deck.new([Card.new(10,:spades),Card.new(10,:diamonds),Card.new(2,:diamonds),Card.new(8,:clubs),Card.new(9,:hearts),Card.new(10,:spades)])
		game = ThreeCardPoker.new(deck)
		game.check_for_winner
	end
end