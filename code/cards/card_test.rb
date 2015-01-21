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

	def test_face_card_valued_at_10
		card = Card.new(:jack, :spades)
		assert_equal 10, card.value
	end

	def test_ace_value_at_11
		card = Card.new(:ace, :clubs)
		assert_equal 11, card.value
	end

  def test_numbered_card_displays_suit_and_english_value
	  assert_equal "Four of Hearts", @card.display
  end

	def test_face_card_displays_suit_and_english_value
		face_card = Card.new(:jack, :spades)
		assert_equal "Jack of Spades", face_card.display
	end

	def test_cards_are_comparable
		six_of_spades = Card.new(6, :spades)
		jack_of_clubs = Card.new(:jack, :clubs)

	end

end
