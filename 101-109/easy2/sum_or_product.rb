def prompt(msg)
  puts ">> #{msg}"
end

def sum(num)
  (1..num).to_a.inject(:+)
end

def product(num)
  (1..num).to_a.inject(:*)
end

prompt "Please enter an integer greater than 0:"
num = gets.chomp.to_i

answer = ''
loop do
  prompt "Enter 's' to compute the sum, 'p' to compute the product."
  answer = gets.chomp
  break if %w(s p).include?(answer)
  prompt "Oops, wrong operation"
end

if answer == 's'
  prompt sum(num)
elsif answer == 'p'
  prompt product(num)
end
