require './to_english'
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

	def to_letter
		if @rank.is_a?(Fixnum)
			@rank
		elsif @rank == :jack
			"J"
		elsif @rank == :queen
			"Q"
		elsif @rank == :king
			"K"
		else
			"A"
		end
	end

	def suit_letter
		if @suit == :clubs
			"C"
		elsif @suit == :hearts
			"H"
		elsif @suit == :diamonds
			"D"
		else
			"S"
		end
	end


	def display
		if @rank.is_a?(Fixnum)
			"#{@rank.to_english.capitalize} of #{suit.to_s.capitalize}"
		else
			"#{@rank.to_s.capitalize} of #{suit.to_s.capitalize}"
		end
	end


	def to_img

	end


end