require 'minitest/autorun'
require './card'

class CardTestTest < MiniTest::Unit::TestCase

	def setup
		@card = Card.new(4, :hearts)
	end

	def test_card_has_value
		assert_equal 4, @card.value
	end

end
