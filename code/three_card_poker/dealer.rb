require './card'
require './hand'

#player can make a Pair Plus bet
#player can make an Ante bet
#need to create display to ask player to make Pair Plus bet
#need to create display to ask player to make Ante bet
# Pair Plus and Ante bet will be assigned gets value
#

class Dealer

	attr_reader :hand

	def initialize(hand)
		@hand = hand
	end

	def display
		"Dealer shows #{@card_display}"

	end
	def card_display
		@hand.map{|card| card.display }.join(' and ')
	end

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

	def ⇔(player)
		hand_value ⇔ player.hand_value
	end




end
