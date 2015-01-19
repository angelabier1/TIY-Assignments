require 'minitest/autorun'
require './deck'

#Deck has 52 unique cards
#can deal cards from a deck

class DeckTest < MiniTest::Unit::TestCase

	def setup
		@deck = Deck.new
	end

	def test_deck_has_52_cards
		assert_equal 52, @deck.size
	end


end