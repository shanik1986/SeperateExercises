class Series
  attr_reader :str

  def initialize(str)
    @str = str.chars
  end
  # # Recursive Solution without using the each_cons method
  # # =======================================================
  # def slices(n, slice = str.clone, result = [])
  #   check_arguments(n) if first_run?(slice)
  #   return result if slice.size < n
  #
  #   result << slice[0, n].chars.map(&:to_i)
  #   slices(n, slice[1..-1], result)
  # end
  #
  # private
  #
  # def check_arguments(n)
  #   raise ArgumentError if n > str.size
  # end
  #
  # def first_run?(slice)
  #   slice == str
  # end


  # # Solution using each_cons
  # # ========================
  # def slices(n)
  #   raise ArgumentError, "Slice to big for number" if n > str.size
  #   str
  #      .chars
  #      .map(&:to_i)
  #      .each_cons(n)
  #      .with_object([]) { |nums, res| res << nums }
  # end

  # Solution after a break
  # ======================
  def slices(n)
    raise ArgumentError, 'Slice to big' if n > str.size

    limit = str.size + 1
    str.each_index.with_object([]) do |idx, res|
      return res if idx + n >= limit

      res << str[idx, n].map(&:to_i)
    end
  end
end
