require 'minitest/autorun'
require './three_card_poker'
require './card_test'
require './player_test'
require './deck_test'
require './hand_test'
require './dealer_test'

class ThreeCardPokerTest < MiniTest::Unit::TestCase

	def setup
		@deck = Deck.new
		@game = ThreeCardPoker.new(@deck)
		player_cards = @deck.deal(3)
		player_hand = Hand.new(player_cards)
		@player = Player.new(player_hand)
		dealer_cards = @deck.deal(3)
		dealer_hand = Hand.new(dealer_cards)
		@dealer = Dealer.new(dealer_hand)

	end

	def test_game_has_a_player
		assert @game.player
	end

	def test_game_has_a_dealer
		assert @game.dealer
	end

  def test_player_starts_with_3_cards_from_deck
		assert_equal 3, @game.player.hand.size
  end

	def test_dealer_starts_with_3_cards_from_deck
		assert_equal 3, @game.dealer.hand.size
	end

	def test_player_dealt_straight_wins_if_dealer_has_pair
		cards = ([Card.new(10,:spades),Card.new(10,:diamonds),Card.new(2,:diamonds),Card.new(8,:clubs),Card.new(9,:hearts),Card.new(10,:spades)])
		deck = Deck.new(cards)
		game = ThreeCardPoker.new(deck)
		puts "Winner is #{@game.winner} "
	end

	def test_show_player_hand_and_player_hand_type
		puts "Player has:\n#{@player.hand.card_display}\nWhich is a #{@player.hand.type_display} hand."
	end

	def test_show_dealer_hand_and_dealer_hand_type
		puts "Dealer has:\n#{@dealer.hand.card_display}\nWhich is a #{@dealer.hand.type_display} hand."
	end
end