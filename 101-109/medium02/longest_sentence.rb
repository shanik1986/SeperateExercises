sample = File.read("book.txt")
sentences = sample.split(/[\.?!]/)
longest = sentences.max_by { |sentence| sentence.split.size }

puts "The longest sentence is: \"#{longest}\""
puts "The sentence contains #{longest.split.size} words"
