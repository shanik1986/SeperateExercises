puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_rate = gets.chomp.to_f

tip_sum = (bill * (tip_rate / 100)).round(2)

puts "The tip is $#{tip_sum}"
puts "The total is $#{bill + tip_sum}"
