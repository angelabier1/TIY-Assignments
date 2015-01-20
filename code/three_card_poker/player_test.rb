require 'minitest/autorun'
require './player'

class PlayerTest < MiniTest::Unit::TestCase

	def setup
		cards = [Card.new(:ace,:clubs), Card.new(5,:clubs), Card.new(10, :spades)]
		@player = Player.new(cards)
	end

	def test_player_has_hand
		assert @player.hand
	end

	def test_player_hand_has_type
		#cards = [Card.new(:ace,:clubs), Card.new(5,:clubs), Card.new(10, :clubs)]
		assert_equal :flush, @player.hand_type
	end


end
