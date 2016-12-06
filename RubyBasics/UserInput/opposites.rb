def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string != '0'
end

def read_number
  num = nil
  loop do
    puts '>> Please enter a positive ot negative integer'
    num = gets.chomp
    return num.to_i if valid_number?(num)
    puts '>> Invalid input. Only non-zero integers are allowed'
  end
end

num1 = nil
num2 = nil

loop do
  num1 = read_number
  num2 = read_number

  break if num1 * num2 < 0
  puts ">> Sorry. One integer must be positive and the other must be negative\n>>Let's start over"
end

answer = num1.to_i + num2.to_i
puts ">> #{num1} + #{num2} = #{answer}"
