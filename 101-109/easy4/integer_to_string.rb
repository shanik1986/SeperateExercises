DIGITS = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7',
          8 => '8', 9 => '9', 0 => '0'}

def integer_to_string(num)
  str = ''

  loop do
    last_digit = num % 10
    str.prepend(DIGITS[last_digit])
    num /= 10
    break if num == 0
  end
  str
end

def signed_integer_to_string(num)
  multiplier = 1
  sign = if num > 0
           '+'
         elsif num < 0
           multiplier = -1
           '-'
         else
           ''
         end
  integer_to_string(multiplier * num).prepend(sign)
end


puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
