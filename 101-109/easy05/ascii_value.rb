def ascii_value(str)
  return str.chars.map { |char| char.ord }.inject(:+) unless str.empty?
  0
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
