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
    elsif self < 40
      "X" + (self - 10).to_roman
    elsif self < 50
      "XL" + (self - 40).to_roman
    elsif self < 90
      "L" + (self - 50).to_roman
    elsif self < 100
      "XC" + (self - 90).to_roman
    elsif self < 400
      "C" + (self - 100).to_roman
    elsif self < 500
      "CD" + (self - 400).to_roman
    elsif self < 900
      "D" + (self - 500 ).to_roman
    elsif self < 1000
      "CM" + (self - 900).to_roman
    else
      "M" + (self - 1000).to_roman
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
test 399.to_roman, "CCCXCIX"
test 400.to_roman, "CD"
test 499.to_roman, "CDXCIX"
test 500.to_roman, "D"
test 600.to_roman, "DC"
test 799.to_roman, "DCCXCIX"
test 999.to_roman, "CMXCIX"
test 2015.to_roman, "MMXV"