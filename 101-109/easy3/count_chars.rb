print "Please write a word or multiple words: "
words = gets.chomp

#My answer: chars = words.size - words.count(' ')
chars = words.delete(' ').size # LS Answer


puts "There are #{chars} characters in #{words}"
