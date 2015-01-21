require 'minitest/autorun'
require './poker_card'

class PokerCardTest < MiniTest::Unit::TestCase

	def setup
		@poker_card = Card.new(:ace,:hearts)
	end

	def test_jack_valued_at_11
		jack_of_spades = Card.new(:jack, :spades)
		assert_equal 11, jack_of_spades.rank_value
	end

	def test_queen_valued_at_12
		queen_of_hearts = Card.new(:queen, :hearts)
		assert_equal 12, queen_of_hearts.rank_value
	end

end
