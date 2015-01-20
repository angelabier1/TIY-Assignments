require './card'
require './hand'

#player can make a Pair Plus bet
#player can make an Ante bet
#need to create display to ask player to make Pair Plus bet
#need to create display to ask player to make Ante bet
# Pair Plus and Ante bet will be assigned gets value
#

class Player

	attr_accessor :pair_plus, :ante, :hand

	def initialize(hand, pair_plus = 0, ante = 0)
		@hand = hand
		@pair_plus = pair_plus
		@ante = ante
	end

	def display
		puts "Player, would you like to make a bet?"
		reply = gets.chomp
		if reply.downcase == 'yes'
			puts "How much would you like to put down for your Ante bet?"
			@ante = gets.chomp.to_i
			puts "How much would you like to put down for your Pair Plus bet?"
			@pair_plus = gets.chomp.to_i
			puts "You have made a $#{@pair_plus} Pair Plus bet and a $#{@ante} Ante bet."
		elsif reply.downcase == 'no'
			"You must place a bet in order to play"
		else
			"Please reply with Yes or No"
		end

	end

	def card_display
		@hand.map{|card| card.display }.join(' \n ')
	end

	# def pair_plus_display
	# 	puts "How much would you like to put down for your Pair Plus bet?"
	# 	@pair_plus += gets.chomp.to_i
	# end

	def hand_value
		@hand.value
	end

	def hand_type
		@hand.type
	end

	def high_card_value
		@hand.high_value
	end

	def mid_card_value
		@hand.mid_value
	end

	def low_card_value
		@hand.low_value
	end

	def high_to_low
		@hand.sort.reverse
	end

	def ⇔(dealer)
		hand_value ⇔ dealer.hand_value
	end



end
