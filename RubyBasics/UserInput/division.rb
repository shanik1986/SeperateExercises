def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil
error_message = '>> Invalid input! Only Integers are allowd'

loop do
  puts '>> Please enter numneator:'
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts error_message
end

loop do
  puts '>> Please enter denominator:'
  denominator = gets.chomp
  if denominator == '0'
    puts '>> Invalid input! 0 is not allowed as a denominator'
  else
    break if valid_number?(denominator)
    puts error_message
  end

end

answer = numerator.to_i / denominator.to_i
puts ">> #{numerator} / #{denominator} is #{answer}"
