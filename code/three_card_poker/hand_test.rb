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
		cards2 = [Card.new(2, :hearts),Card.new(4,:hearts),Card.new(6,:hearts)]
		hand2 = Hand.new(cards)
		hand3 = Hand.new(cards2)
		assert_equal 2, hand2.unique_suits
		assert_equal 1, hand3.unique_suits
	end

	def test_hand_high_card_is_card_with_highest_value
		cards = [Card.new(2, :hearts),Card.new(4,:hearts),Card.new(:ace,:clubs)]
		hand = Hand.new(cards)
		assert_equal 14, hand.high_value
	end

	def test_hand_low_card_is_card_with_lowest_value
	 assert_equal 2, @hand.low_value
	end

	def test_middle_card_is_card_with_value_between_high_card_and_low_card_values
		assert_equal 4, @hand.mid_value
	end

	def test_hand_type
		cards2 = [Card.new(2, :hearts),Card.new(4,:hearts),Card.new(6,:hearts)]
		hand2 = Hand.new(cards2)
		cards3 = [Card.new(6,:hearts), Card.new(7,:hearts), Card.new(8,:hearts)]
		hand3 = Hand.new(cards3)
		cards4 = [Card.new(2, :hearts),Card.new(3,:spades),Card.new(4,:hearts)]
		hand4 = Hand.new(cards4)
		assert_equal :high_card, @hand.type
		assert_equal :flush, hand2.type
		assert_equal :straight_flush, hand3.type
		assert_equal :straight, hand4.type
	end

	def test_hand_returns_rank_of_pair
		cards4 = [Card.new(8, :clubs), Card.new(8, :hearts), Card.new(7, :spades)]
		hand4 = Hand.new(cards4)
		assert_equal 8, hand4.pair_rank[0]
	end

	def test_pair_returns_value_for_kicker
		cards4 = [Card.new(8, :clubs), Card.new(8, :hearts), Card.new(:ace, :spades)]
		hand4 = Hand.new(cards4)
		assert_equal 14, hand4.kicker[0]
	end

	def test_hand_displays_type
		assert_equal 'High Card', @hand.type_display
	end

	def test_hand_displays_cards
		assert_equal "Two of Hearts\nFour of Diamonds\nSix of Clubs", @hand.card_display
	end



end
