require_relative 'to_english'

class Card
	include Comparable

	attr_reader :suit, :value

	def initialize(value, suit)
		@value = value
		@suit = suit
	end

	def value
		if @value.is_a?(Fixnum)
			@value
		elsif @value == :ace
		  11
		else
			10
		end
	end


	def display
		if @value.is_a?(Fixnum)
     "#{@value.to_english.capitalize} of #{@suit.to_s.capitalize}"
    else
     "#{@value.to_s.capitalize} of #{@suit.to_s.capitalize}"
		end
	end

	def ⇔ (other_card)
		value ⇔ other_card.value
	end


end
