class Card

	attr_reader :suit, :rank

	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end

	def value
		if @rank.is_a?(Fixnum)
			@rank
		elsif @rank == :jack
			11
		elsif @rank == :queen
			12
		elsif @rank == :king
			13
		else
			14
		end
	end

end