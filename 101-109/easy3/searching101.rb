NUMBER_OF_ITEMS = 6

def determine_suffix(num)
  case num
  when 1
    'st'
  when 2
    'nd'
  when 3
    'rd'
  else
    'th'
  end
end

def prompt(msg)
  puts "==> #{msg}"
end

numbers = []
1.upto(NUMBER_OF_ITEMS - 1) do |i|
  suffix = determine_suffix(i)
  prompt "Enter the #{i}#{suffix} number:"
  numbers += gets.chomp.to_i
end

prompt "Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include?(last_number)
  prompt "The number #{last_number} appears in #{numbers}"
else
  prompt "The number #{last_number} does not appear in #{numbers}"
end
