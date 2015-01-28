class Team < ActiveRecord::Base
	belongs_to :city

	# Team#division => the the # in between Team and division lets you know that it is being called on an instance of the
	# Class which is an Object

	# Define a method Team#division_rivals that returns all other teams in the same (conference and) division
	def division_rivals
		Team.where(conference: conference,
		           division: division).where.not(id: id)
	end
	# Define a method Team#division_leader? that checks whether a team has more wins than any other team in its (conference and) division
	Team.where()
	# Define a method Team#division_winner? that checks whether a team leads its division and all its division rivals have played 16 games.

end