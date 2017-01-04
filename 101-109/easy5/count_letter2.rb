def word_sizes(str)
  word_hash = Hash.new(0)
  str.gsub(/[^a-z\s]+/i, '').split.each do |word|
    size = word.size
    word_hash[size] += 1
  end
  word_hash
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
