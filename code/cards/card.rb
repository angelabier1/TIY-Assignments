require './to_english'

class Card
	# :jack, :queen, :king = 10 and :ace = 11
	# :jack = 11, :queen = 12, :king =13, :ace =14

	attr_reader :suit, :value

	def initialize(value, suit)
		@value = value
		@suit = suit
	end


	def display
		if @value.is_a?(Fixnum)
     "#{@value.to_english.capitalize} of #{@suit.to_s.capitalize}"
    else
     "#{@value.to_s.capitalize} of #{@suit.to_s.capitalize}"
		end
	end


end
