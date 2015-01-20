require './card'
class Deck

	def initialize (cards = nil)
		@cards = cards || [:hearts, :diamonds, :clubs, :spades].map do |suit|
				((2..10).to_a + [:jack, :queen, :king, :ace]).map do |rank|
				Card.new(rank,suit)
				end
		end.flatten.shuffle
	end

	def size
		@cards.length
	end

	def [](index)
		@cards[index]
	end

	def deal(n)
		@cards.pop(n)
	end


end