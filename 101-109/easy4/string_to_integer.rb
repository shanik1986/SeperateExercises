DIGITS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
          '8' => 8, '9' => 9, '0' => 0}

def string_to_integer(str)
  multiplier = 1
  sum = 0

  str.reverse.each_char do |char|
    sum = sum + (DIGITS[char] * multiplier)
    multiplier *= 10
  end

  sum
end

def string_to_signed_integer(num)
  range = 0..-1
  sign = 1

  if num[0] == '-' || num[0] == '+'
    range = 1..-1
    sign = -1 if num[0] == '-'
  end
  sign * string_to_integer(num[range])
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
