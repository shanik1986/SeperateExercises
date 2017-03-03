require 'pry'

ROMAN_MAPPING = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

def int_to_roman(num, result = '', multiplier = 1)
  return result if num.zero?

  current_num = num % 10

  result = int_to_roman(num / 10, result, multiplier * 10) + translate_digit(current_num * multiplier)
end

def translate_digit(number)
  result = ''

  while number > 0
    max_divider = ROMAN_MAPPING.keys.select { |key| key <= number }.max
    result += ROMAN_MAPPING[max_divider]

    number -= max_divider
  end

  result
end

p int_to_roman(78) == 'LXXVIII'
p int_to_roman(15) == 'XV'
p int_to_roman(99) == 'XCIX'
p int_to_roman(2433) == 'MMCDXXXIII'
p int_to_roman(7) == 'VII'
p int_to_roman(188) == 'CLXXXVIII'
