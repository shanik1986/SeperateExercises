def divisors(num)
  half = (num / 2)
  (1..half).each_with_object([num]) do |div, result|
    result << div if (num % div).zero?
  end
end

puts divisors(1).sort == [1]
puts divisors(7).sort == [1, 7]
puts divisors(12).sort == [1, 2, 3, 4, 6, 12]
puts divisors(98).sort == [1, 2, 7, 14, 49, 98]
puts divisors(99400891).sort == [1, 9967, 9973, 99400891]
