# def reverse_sentence(str)
#   arr = str.split(' ')
#   arr.reverse.join(' ')
# end
#
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'


def reverse_words(str)
  arr = str.split.map do |item|
    item.reverse! if item.size >= 5
    item
  end
  arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
