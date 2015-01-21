require_relative '../card'

class BlackjackCard < Card

	def value
		if @value.is_a?(Fixnum)
			@value
		elsif @value == :ace
		  11
		else
			10
		end
	end

end
