# Print 5 random numbers between 0 and 99

numbers = []

while numbers.length < 5
  numbers.push(rand(0..99))
end

puts numbers
