# Converting integers to their English equivalent is similar to the to_roman.rb #code in that we must first come up with the unique integers.
# 1. List unique
# 2. Return "zero" if number == 0
# 3. Need array to hold the integers that are converted. 
# 4. 
#
#

Num_to_word = {
1 => "one",
2 => "two",
3 => "three",
4 => "four",
5 => "five",
6 => "six",
7 => "seven",
8 => "eight",
9 => "nine",
10 => "ten",
11 => "eleven",
12 => "twelve",
13 => "thirteen",
14 => "fourteen",
15 => "fifteen",
16 => "sixteen",
17 => "seventeen",
18 => "eighteen",
19 => "nineteen",
20 => "twenty",
30 => "thirty",
40 => "forty",
50 => "fifty",
60 => "sixty",
70 => "seventy",
80 => "eighty",
90 => "ninety",
100 => "hundred",
1000 => "thousand",
1000000 => "million",
1000000000 => "billion",
}

class Int_To_Eng_Wrd
  class << self
    def convert(number)
      return "zero" if number == 0
      word_equiv_result = []
      num_digits_reversed = number.to_s.reverse
      digit_count = 0
      num_digits_reversed.chars.each_with_index do |digit, index|