require 'minitest/autorun'
require './blackjack_card'

class BlackjackCardTest < MiniTest::Unit::TestCase

	def setup
		@blackjack_card = BlackjackCard.new(6, :spades)
	end

end
