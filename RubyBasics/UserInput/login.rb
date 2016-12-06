LOGIN = %w(shanik1986 secret)

loop do
  puts '>> Please enter username:'
  user = gets.chomp

  puts '>> Please enter password:'
  password = gets.chomp

  break if [user, password] == LOGIN
  puts '>> Authorization Failed!'
end

puts 'Welcome!'
