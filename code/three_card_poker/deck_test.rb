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

	def test_deck_can_deal_cards
		cards = @deck.deal(3)
		assert_kind_of Card, cards[0]
		assert_kind_of Card, cards[2]
		assert_equal 49, @deck.size
		assert_equal 3, cards.length
	end


end