class City < ActiveRecord::Base
	belongs_to :state

	# Define a method City.fastest_growing that returns the single fastest growing city
	# Define a method City.shrinking that returns all cities with decreasing population

	# def self.densest(n)
	#
	# 	order('population_density DESC').limit(n)
	#
	# end
	#
	# def in_state_cities
	#
	# 	state.city
	#
	# end

	def self.fastest_growing
		order('population_change DESC').map{|city| city.name}.first
	end

	def self.shrinking
		where('population_change DESC').map{|city| city.name}
	end


end