class Fixnum

	def to_english
		names_as_array = %w(zero one two three four
                        five six seven eight nine
                        ten eleven twelve thirteen
                        fourteen fifteen sixteen
                        seventeen eighteen nineteen
                       )
		if self >= 1_000_000_000_000
			internal_calculation(1_000_000_000_000, "trillion")
		elsif self >= 1_000_000_000
			internal_calculation(1_000_000_000, "billion")
		elsif self >= 1000000
			internal_calculation(1000000, "million")
		elsif self >= 1000
			internal_calculation(1000, "thousand")
		elsif self >= 100
			internal_calculation(100, "hundred")
		elsif self > 19
			tens_names = %w(blank blank twenty thirty forty fifty
                      sixty seventy eighty ninety)
			tens = self / 10
			ones = self % 10
			if ones > 0
				"#{tens_names[tens]} #{ones.to_english}"
			else
				tens_names[tens]
			end
		else
			names_as_array[self]
		end
	end

	def internal_calculation(place, name)
		remainder = self % place
		big_number = self / place
		if remainder > 0
			"#{big_number.to_english} #{name} #{remainder.to_english}"
		else
			"#{big_number.to_english} #{name}"
		end
	end
end