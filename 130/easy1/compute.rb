def compute
  return yield if block_given?
  "Does not compute!"
end

puts compute { 5 + 3 }
puts compute { 'a' + 'b' }
puts compute == 'Does not compute!'
