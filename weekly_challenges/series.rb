require 'pry'

class Series
  attr_reader :str

  def initialize(str)
    @str = str
  end
  # Recursive Solution without using the each_cons method
  # =======================================================
  # def slices(n, slice = str.clone, result = [])
  #   check_arguments(n) if first_run?(slice)
  #   return result if slice.size < n
  #
  #   result << slice[0..(n - 1)].chars.map(&:to_i)
  #   slices(n, slice[1..-1], result)
  # end

  def slices(n)
    raise ArgumentError, "Slice to big for number" if n > str.size
    str.chars.map(&:to_i).each_cons(n).with_object([]) { |nums, res| res << nums }
  end

  private

  def check_arguments(n)
    raise ArgumentError if n > str.size
  end

  def first_run?(slice)
    slice == str
  end
end
