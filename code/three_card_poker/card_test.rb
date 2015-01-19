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

end
