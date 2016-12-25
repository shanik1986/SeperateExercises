def stringy(length, start_with = '1')
  str = start_with
  (length - 1).times { str += str[-1] == '1' ? '0' : '1' }
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
