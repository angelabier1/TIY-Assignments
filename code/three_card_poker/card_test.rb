require 'minitest/autorun'
require './card'

class CardTest < MiniTest::Unit::TestCase

	def setup
		@card = Card.new(5, :clubs)
	end

	def test_card_has_a_suit
		assert_equal :clubs, @card.suit
	end

	def test_card_has_a_rank
		assert_equal 5, @card.rank
	end

	def test_card_has_value
		assert_equal 5, @card.value
	end

	def test_jack_valued_at_11
		card = Card.new(:jack, :diamonds)
		assert_equal 11, card.value
	end

	def test_queen_valued_at_12
		card = Card.new(:queen, :hearts)
		assert_equal 12, card.value
	end

	def test_king_valued_at_13
		card = Card.new(:king, :hearts)
		assert_equal 13, card.value
	end

	def test_ace_valued_at_14
		card = Card.new(:ace, :hearts)
		assert_equal 14, card.value
	end

	def test_numbered_card_displays_suit_and_english_rank
		assert_equal "Five of Clubs", @card.display
	end

	def test_face_card_displays_suit_and_value
		card = Card.new(:king, :spades)
		assert_equal "King of Spades", card.display
	end

end
