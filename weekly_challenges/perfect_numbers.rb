require 'prime'

# Perfect: Sum of divisors ==  the number
# Abundant: Sum of divisors > the number
# Deficient: Sum of divisors < the number

class PerfectNumber
  def self.classify(num)
    raise RuntimeError if num < 1
    return 'deficient' if Prime.prime?(num)

    sum_of_divisors = divisors(num).reduce(:+)
    if sum_of_divisors > num
      'abundant'
    elsif sum_of_divisors < num
      'deficient'
    else
      'perfect'
    end
  end

  def self.divisors(num)
    (1..(num / 2)).select { |divisor| (num % divisor).zero? }
  end
end

# 1) Find all of the number's divisors
# 2) Decide what definition the number fits
# 3) Display the number's definition
