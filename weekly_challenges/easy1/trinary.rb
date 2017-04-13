class Trinary
  BASE = 3

  attr_reader :tri_str
  def initialize(num_as_str)
    @tri_str = num_as_str
  end

  # # Adaptation of the Octal solution - exactly the same with a different base (initialize method need's changing to use this)
  # # =========================================================================
  # def to_decimal(sum = 0, trinary = tri_num, power = 0)
  #   return sum if trinary.zero?
  #
  #   trinary, current_digit = trinary.divmod(10)
  #   return 0 if current_digit >= BASE
  #
  #   sum += current_digit * (BASE ** power)
  #   power += 1
  #
  #   to_decimal(sum, trinary, power)
  # end

  def to_decimal
    return 0 if tri_str.match(/[^0-BASE]/)

    tri_str.reverse
                   .chars
                   .map
                   .with_index { |num, idx| num.to_i * (BASE ** idx) }
                   .reduce(:+)
  end
end
