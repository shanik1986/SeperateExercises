puts '>> Do you want me to print something? (y/n)'
answer = nil

loop do
  answer = gets.chomp.downcase
  break if %w(y n).include?(answer)

  puts "Error! Please enter 'y' or 'n' only"
end

puts 'something' if answer == 'y'
