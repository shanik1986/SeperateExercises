  puts "What's 2 + 2 equal?"
  loop do
    answer = gets.chomp.to_i
    if answer == 4
      puts "That's correct!"
      break
    end
    puts "Wrong answer. Try again..."
  end
