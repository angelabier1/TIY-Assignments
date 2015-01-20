require 'minitest/autorun'
require './blackjack_card'

class BlackjackCardTest < MiniTest::Unit::TestCase

	def setup
		@blackjack_card = Card.new(6, :spades)
	end

  def test_blackjack_card_exists
		assert @blackjack_card
  end

end
