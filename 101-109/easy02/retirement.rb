year = Time.new.year

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

years_to_go = retirement_age - age

puts "It's #{year}. You will retire in #{year + years_to_go}."
puts "You have only #{years_to_go} years of work to go!"
