sun = ['visible', 'hidden'].sample

puts "The sun is so bright" sun == 'visible'
puts 'The clouds are blocking the sun' unless sun == 'visible'
