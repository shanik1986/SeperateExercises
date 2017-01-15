# 1) FIND the biggest egyptian(big_eg) fraction we can deduct from the number
# 2) ADD big_eg's denominator to the LIST of egyptian fractions needed to create the number'
# 3) DEDUCT big_eg from the number and go back to 1 with the remainder as the new number
# 4) IF the number == 0 after deducting big_eg, RETURN LIST
# 5) ELSE run egyptian on the number
def egyptian(rat_num, results = [])
  denominator = find_biggest_denominator(results.last, rat_num)
  results << denominator
  rat_num = rat_num - Rational(1, denominator)

  return results if rat_num == 0

  egyptian(rat_num, results)
end

# This method needs to find the biggest small enough denominator (deno),
# so that rat_num - (1 / deno) >= 0.
# 1) INCREMENT current_deno UNTIL rat_num - Rational(1, current_deno) < 0
# 2) RETURN current_deno
def find_biggest_denominator(denominator, rat_num)
  denominator == nil ? denominator = 1 : denominator += 1
  loop do
    break if (rat_num - Rational(1, denominator)) >= 0
    denominator += 1
  end
  denominator
end

def unegyptian(denominators_list)
  denominators_list.map { |denominator| Rational(1, denominator) }.inject(:+)
end

# p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4)))# == Rational(3, 4)
# p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
