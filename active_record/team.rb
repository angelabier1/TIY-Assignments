class Team < ActiveRecord::Base
	belongs_to :city

	# def division_rivals
	# 	self.where('division').
	# end

end