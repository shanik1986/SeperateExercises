def featured(num)
  digits = num.to_s.size
  error_prompt = "Error - number too big to be featured"

  return error_prompt if digits > 10

  num += 1
  num += 1 until num % 7 == 0 && num.odd?

  loop do
    break if num.to_s.chars.uniq.join('') == num.to_s
    num += 14
    return error_prompt if digits == 11
  end

  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
# p featured(9_999_999_99) # -> There is no possible number that fulfills those requirements
