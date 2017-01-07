def count_letters(str)
  counter = Hash.new

  counter[:lowercase] = str.chars.count { |char| char =~ /[a-z]/ }
  counter[:uppercase] = str.chars.count { |char| char =~ /[A-Z]/ }
  counter[:neither] = str.chars.count { |char| char =~ /[^a-zA-Z]/ }

  counter
end

def change_to_percentages!(hsh, denominator)
  hsh.each { |key, value| hsh[key] = (value.to_f / denominator) * 100  }
end

def letter_percentages(str)
  counter = count_letters(str)
  change_to_percentages!(counter, str.size)
  counter
end

  p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
  p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
  p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
