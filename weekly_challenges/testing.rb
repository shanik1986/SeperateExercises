class Fixnum
  def to_roman
    dictionary = {
      1 => 'I', 4 => 'IV',  5  => 'V', 10 => X, 50 => 'L',
      100 => 'C', 500 => 'D', 1000 => 'M'
    }

    return dictionary[self] if dictionary[self]
    # converted_num = self.to_s.reverse.to_i
  end
end

3479

9743

10 ** 3 for 4 digits
