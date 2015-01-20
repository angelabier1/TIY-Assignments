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

	def unique_suits
		@cards.map {|card| card.suit}.uniq.length
	end

	def high_value
		@cards.map {|card| card.value}.sort.max
	end

	def low_value
		@cards.map {|card| card.value}.sort.min
	end

	def mid_value
		sorted_cards = @cards.map {|card| card.value}.sort
		sorted_cards[1]
	end

	def type
		if self.unique_ranks == 3 && self.unique_suits > 1
			:high_card
		elsif self.unique_ranks == 2 && self.unique_suits > 1
			:pair
		elsif self.unique_suits == 1  && self.unique_ranks > 2 && self.high_value-self.low_value + 1 != self.size
			:flush
		elsif self.high_value - self.low_value + 1 == self.size && self.unique_suits > 1
			:straight
		elsif self.unique_ranks == 1 && self.unique_suits > 1
			:three_of_a_kind
		else
			:straight_flush
		end
	end

	def hand_value
		if self.type == :high_card
			1
		elsif self.type == :pair
			2
		elsif self.type == :flush
			3
		elsif self.type == :straight
			4
		elsif self.type == :three_of_a_kind
			5
		else
			6
		end
	end

end