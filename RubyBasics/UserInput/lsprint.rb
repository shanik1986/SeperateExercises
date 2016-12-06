puts '>> How many lines do you want me to print? Please enter a number >= 3'
iterations = nil

loop do
  iterations = gets.chomp.to_i
  break if iterations >= 3

  puts "That's not enough lines..."
end

iterations.times do
  puts "Launch School is the best!"
end
