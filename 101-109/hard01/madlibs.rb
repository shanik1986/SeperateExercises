NOUNS = %w(book shelf cat dog woman man test microwave pizza)
VERBS = %w(walk talk eat sleep pray lick kiss hug lift shift stab sit)
ADVERBS = %w(quickly willfullt abruptly happily beatifully)
ADJECTIVES = %w(bitter pretty fast hot cold amazing big small stupid)

def change_random_word(str, words_arr)
  words = str.split

  random_index = rand(0..(words.size - 1))
  substitute_word = words_arr.sample

  if words[random_index][-1] =~ /[\.,?!]/
    substitute_word << words[random_index][-1]
  end

  words[random_index] = substitute_word
  words.join(' ')
end

arr = File.new("sample_text.txt", "r").readlines
arr.each do |line|
  line = change_random_word(line, NOUNS)
  line = change_random_word(line, VERBS)
  line = change_random_word(line, ADVERBS)
  line = change_random_word(line, ADJECTIVES)
  puts line
end
