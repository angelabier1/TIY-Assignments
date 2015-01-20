require 'minitest/autorun'
require './hand'
require './card'

class HandTest < MiniTest::Unit::TestCase

	def setup
		cards = [Card.new(2, :hearts),Card.new(4,:diamonds),Card.new(6,:clubs)]
		@hand = Hand.new(cards)
	end

	def test_hand_has_cards
		assert_equal 3, @hand.size
		assert_kind_of Card, @hand[0]
	end

	def test_hand_has_cards_with_different_ranks
		assert_equal 3, @hand.unique_ranks
	end

	def test_hand_has_cards_with_different_suits
		cards = [Card.new(2, :hearts),Card.new(4,:hearts),Card.new(6,:clubs)]
		hand2 = Hand.new(cards)
		assert_equal 1, hand2.unique_suits
	end


end
