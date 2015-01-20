class Card
	# :jack, :queen, :king = 10 and :ace = 11
	# :jack = 11, :queen = 12, :king =13, :ace =14

	attr_reader :suit, :value

	def initialize(value, suit)
		@value = value
		@suit = suit
	end

	def value
		if @value is_a?(Fixnum)
			 @value
		end
	end

	def display
		if @value is_a?(Fixnum)
     "#{@value.to_english.capitalize} of #{@suit.capitalize} "
    else
     "#{@value.to_s.capitalize} of #{@suit.capitalize}"
		end
	end


end
