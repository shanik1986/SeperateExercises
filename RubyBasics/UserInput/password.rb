PASS = 'snc'

puts '>> Please enter the password:'

loop do
  answer = gets.chomp
  break if answer == PASS

  puts '>> Invalid Password!'
end

puts '>> Welcome!'
