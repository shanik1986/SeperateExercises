DIGITS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
          '8' => 8, '9' => 9, '0' => 0}

def string_to_integer(str)
  # 1) Identify last digit
  multiplier = 1
  sum = 0

  str.reverse.each_char do |char|
    sum = sum + (DIGITS[char] * multiplier)
    multiplier *= 10
  end
  sum
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
