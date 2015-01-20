require './player'
require './dealer'

class ThreeCardPoker

	attr_reader :player, :dealer, :winner, :push
	attr_accessor :pair_plus, :ante, :hand

	def initialize(deck = nil)

		@deck = deck || Deck.new
		@cards = @deck.deal(3)
		@hand = Hand.new(@cards)
		@player = Player.new(@hand, @pair_plus=0,@ante = 0)
		@dealer = Dealer.new(@hand)
		check_for_winner
	end


	def display
		 "#{@player.card_display}.\n #{@dealer.display}"
	end

	def check_for_winner
		if @player.hand.value  > @dealer.hand.value
			@winner = @player
		elsif @player.hand.value < @dealer.hand.value
			@winner = @dealer
		elsif @player.hand.value == @dealer.hand.value && @player.hand.type != :pair
			if @player.hand.high_value > @dealer.hand.high_value
				@winner = @player
			elsif @player.hand.high_value < @dealer.hand.high_value
				@winner = @dealer
			else
				if @player.hand.mid_value > @dealer.hand.mid_value
					@winner = @player
				elsif @player.hand.mid_value < @dealer.hand.mid_value
					@winner = @dealer
				else
					if @player.hand.low_value > @dealer.hand.low_value
						@winner = @player
					elsif @player.hand.low_value < @dealer.hand.low_value
						@winner = @dealer
					else
						@push = true
					end
				end
			end
		else
			if @player.hand.pair_rank[0] > @dealer.hand.pair_rank[0]
				@winner = @player
			elsif
				@player.hand.pair_rank[0] < @dealer.hand.pair_rank[0]
				@winner = @dealer
			else
				if @player.hand.kicker[0] > @dealer.hand.kicker[0]
					@winner = @player
				elsif @player.hand.kicker[0] < @dealer.hand.kicker[0]
					@winner = @dealer
				else
					@push = true
				end
			end
		end
	end

end