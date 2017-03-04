class Octal
  BASE = 8

  attr_reader :octal_num
  def initialize(num_as_str)
    @octal_num = num_as_str.to_i
  end

# An interative solution using an 'until' structure
# =================================================

  # def to_decimal
  #   octal = octal_num
  #   power, sum = 0, 0
  #
  #   until octal.zero?
  #     octal, current_digit = octal.divmod(10)
  #     return 0 if current_digit >= BASE
  #
  #     sum += current_digit * (BASE ** power)
  #     power += 1
  #   end
  #
  #   sum
  # end

  def to_decimal(sum = 0, octal = octal_num, power = 0)
    return sum if octal.zero?

    octal, current_digit = octal.divmod(10)
    return 0 if current_digit >= BASE

    sum += current_digit * (BASE ** power)
    power += 1

    to_decimal(sum, octal, power)
  end
end
