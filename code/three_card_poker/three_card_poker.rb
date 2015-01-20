require './player'
require './dealer'
require './card'
require './deck'
require './hand'

class ThreeCardPoker

	attr_reader :player, :dealer, :winner, :push, :deck, :cards
	attr_accessor :pair_plus, :ante, :hand

	def initialize(deck = nil)

		@deck = deck || Deck.new
		player_cards = @deck.deal(3)
		player_hand = Hand.new(player_cards)
		@player = Player.new(player_hand, @pair_plus=0,@ante = 0)
		dealer_hand = Hand.new(@deck.deal(3))
		@dealer = Dealer.new(dealer_hand)
		check_for_winner
	end


	def display
		 "#{@player.card_display}.\n #{@dealer.display}"
	end

	def check_for_winner
		@winner =
		if @player.hand.value  > @dealer.hand.value
			 @player
		elsif @player.hand.value < @dealer.hand.value
			@dealer
		elsif @player.hand.value == @dealer.hand.value && @player.hand.type != :pair
			if @player.hand.high_value > @dealer.hand.high_value
				 @player
			elsif @player.hand.high_value < @dealer.hand.high_value
				 @dealer
			else
				if @player.hand.mid_value > @dealer.hand.mid_value
					 @player
				elsif @player.hand.mid_value < @dealer.hand.mid_value
					 @dealer
				else
					if @player.hand.low_value > @dealer.hand.low_value
						@player
					elsif @player.hand.low_value < @dealer.hand.low_value
						@dealer
					else
						@push = true
					end
				end
			end
		else
			if @player.hand.pair_rank[0] > @dealer.hand.pair_rank[0]
				 @player
			elsif
				@player.hand.pair_rank[0] < @dealer.hand.pair_rank[0]
					@dealer
			else
				if @player.hand.kicker[0] > @dealer.hand.kicker[0]
					@player
				elsif @player.hand.kicker[0] < @dealer.hand.kicker[0]
					@dealer
				else
					@push = true
				end
			end
		end
	end

end