require 'minitest/autorun'
require './card'

class CardTest < MiniTest::Unit::TestCase

	def setup
		@card = Card.new(4, :hearts)
	end

	def test_card_has_value
		assert_equal 4, @card.value
	end

	def test_card_has_suit
		assert_equal :hearts, @card.suit
	end

  def test_numbered_card_displays_suit_and_english_value
	  assert_equal "Four of Hearts", @card.display
  end

	def test_face_card_displays_suit_and_english_value
		face_card = Card.new(:jack, :spades)
		assert_equal "Jack of Spades", face_card.display
	end

end
