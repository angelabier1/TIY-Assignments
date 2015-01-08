# I want a method that will convert integers into their Roman numeral representation.
# For example:
# 3.to_roman => "III"
# 15.to_roman => "XV"

class Fixnum

  def to_roman
    if self == 0
      ""
    elsif self <= 3
      "I" * self
    elsif self == 4
      "IV"
    elsif self <= 8
      "V" + (self - 5).to_roman
    elsif self == 9
      "IX"
    elsif self <= 39
      "X" + (self - 10).to_roman
    elsif self <=49
      "XL" + (self - 40).to_roman
    elsif self <= 89
      "L" + (self - 50).to_roman
    elsif self <= 99
      "XC" + (self - 90).to_roman
    elsif self <= 399
      "C" + (self - 100).to_roman
    elsif self == 499
      "CD" + (self - 490).to_roman
    else self <= 500
      "D" + (self - ).to_roman
    end
  end
end

def test(actual_value, expectation)
  if actual_value == expectation
    puts "success"
  else
    puts "expected #{expectation} but got #{actual_value}"
  end
end

test 1.to_roman, "I"
test 2.to_roman, "II"
test 4.to_roman, "IV"
test 5.to_roman, "V"
test 6.to_roman, "VI"
test 9.to_roman, "IX"
test 10.to_roman, "X"
test 25.to_roman, "XXV"
test 40.to_roman, "XL"
test 45.to_roman, "XLV"
test 50.to_roman, "L"
test 58.to_roman, "LVIII"
test 59.to_roman, "LIX"
test 60.to_roman, "LX"
test 65.to_roman, "LXV"
test 80.to_roman, "LXXX"
test 89.to_roman, "LXXXIX"
test 90.to_roman, "XC"
test 97.to_roman, "XCVII"
test 389.to_roman, "CCCLXXXIX"
test 380.to_roman, "CCCLXXX"
test 