require_relative '../card'

class PokerCard  < Card

	def rank_value
		if @value.is_a?(Fixnum)
			@value
		elsif @value == :jack
			11
		elsif @value == :queen
			12
		elsif @value == :king
			13
		else
			14
		end
	end


end
