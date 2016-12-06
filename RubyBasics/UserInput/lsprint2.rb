
loop do
  puts '>> How many lines do you want? Number should be >= 3'
  answer = gets.chomp
  break if answer.downcase == 'q'

  number_of_lines = answer.to_i
  if answer < 3
    puts 'That\'s not enough lines...'
    next
  end

  number_of_lines.times do
    puts 'Launch School is the best!'
  end
end
