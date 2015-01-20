class Hand

	attr_reader :cards

	def initialize(cards = [])
		@cards = cards
	end

	def size
		@cards.length
	end

	def [](index)
		@cards[index]
	end

	def unique_ranks
		@cards.map {|card| card.rank}.uniq.length
	end
end