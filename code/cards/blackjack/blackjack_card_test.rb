require 'minitest/autorun'
require './blackjack_card'

class BlackjackCardTest < MiniTest::Unit::TestCase

	def setup
		@blackjack_card = Card.new(6, :spades)
	end

  def test_blackjack_card_exists
		assert @blackjack_card
  end

	def test_ace_valued_at_11
		ace_of_hearts = Card.new(:ace, :hearts)
		assert_equal 11, ace_of_hearts.value
	end


end
