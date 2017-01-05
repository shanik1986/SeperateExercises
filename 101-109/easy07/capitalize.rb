def word_cap(sentence)
  sentence.split.map { |word| word[0].upcase + word[1..-1].downcase }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
