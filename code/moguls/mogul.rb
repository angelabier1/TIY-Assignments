class Mogul
	attr_reader :name, :net_worth
	def initialize(name,net_worth)
		@name = name
		@net_worth = net_worth #in billions
	end

	def laughs_at?(other_mogul)
		if @net_worth > other_mogul.net_worth
			true
		else
			false
	  end
	end
end

=begin
zuckerberg = Mogul.new('Mark Zuckerberg', 'Facebook', 24)
gates_no_relation = Mogul.new('Bill Gates', 'Microsoft', 46)
turner = Mogul.new('Ted Turner', 'CNN', 11)
rich_guys = [zuckerberg, gates_no_relation, turner]


    ordered_rich_guys = rich_guys.sort_by {|mogul| mogul.net_worth}
    last_guy = ordered_rich_guys.last
    puts "#{ordered_rich_guys.last.name} is the richest dude in my list"

    puts ordered_rich_guys.last.class
=end
