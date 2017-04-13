require 'pry'

class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end
  # A recursive Solution
  # ======================

  # def primes(range = ((2..limit).to_a), result = [])
  #   return result if range.size == 0
  #
  #   result << range.first
  #   denominator = range.first
  #   range = range[1..-1].delete_if { |number| number % denominator == 0 }
  #
  #   primes(range, result)
  # end

  def primes
    result = (2..limit).to_a
    idx = 0

    while idx < result.size
      current_num = result[idx]

      result.delete_if { |num| (num % current_num).zero? && num != current_num }
      idx += 1
    end

    result
  end
end
