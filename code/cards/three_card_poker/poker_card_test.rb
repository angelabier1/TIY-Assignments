require 'minitest/autorun'
require './poker_card'

class PokerCardTest < MiniTest::Unit::TestCase

	def setup
		@poker_card = Card.new(:ace,:hearts)
	end

	def test_jack_valued_at_11
		assert_equal 11, @poker_card.value
	end



end
