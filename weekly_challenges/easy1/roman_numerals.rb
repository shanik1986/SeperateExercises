require 'pry'

class Fixnum
  ROMAN_NUMERAL_RULES = {
    'M' => 1000,
    'CM' => 900,
    'D' => 500,
    'CD' => 400,
    'C' => 100,
    'XC' => 90,
    'L' => 50,
    'XL' => 40,
    'X' => 10,
    'IX' => 9,
    'V' => 5,
    'IV' => 4,
    'I' => 1
  }

  def to_roman
    number = self
    result = ''

    ROMAN_NUMERAL_RULES.each do |key, value|
      roman_letter_multiplier, number = number.divmod(value)
      result += key * roman_letter_multiplier
    end
    result
  end
end

p 2929.to_roman
