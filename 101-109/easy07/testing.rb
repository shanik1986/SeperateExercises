def penultimate(sentence)
  return 'Error: Empty array' if sentence.empty?
  arr = sentence.split
  arr[arr.size / 2]
end

p penultimate('last thing ever') == 'thing'
# p penultimate('Launch School is great!') == 'is'
