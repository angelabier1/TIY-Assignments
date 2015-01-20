require 'minitest/autorun'
require './player'
require './hand'
require './card'

class PlayerTest < MiniTest::Unit::TestCase

	def setup
		cards = [Card.new(:ace,:clubs), Card.new(5,:clubs), Card.new(10, :spades)]
		@hand = Hand.new(cards)
		@player = Player.new(@hand, @pair_plus = 0, @ante = 0)
	end

	def test_player_has_hand
		assert @player.hand
	end

	def test_player_hand_has_type
		#cards = [Card.new(:ace,:clubs), Card.new(5,:clubs), Card.new(10, :clubs)]
		assert_equal :high_card, @player.hand_type
	end


end
