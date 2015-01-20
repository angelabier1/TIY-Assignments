require '../card'

# :jack, :queen, :king = 10 and :ace = 11

class PokerCard  < Card

	def value
		if @value is_a?(Fixnum)
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
