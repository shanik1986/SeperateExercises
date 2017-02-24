LETTERS_ARRAY = ('a'..'z').to_a
ENCRYPTION_KEY = 13
#
# def make_hash
#   key = 1
#   ('a'..'z').each_with_object({}) do |letter, result|
#     result[key] = letter
#     key += 1
#   end
# end
#
# def encrypt_char(char)
#   current_index = LETTERS_ARRAY.index(char)
#   encrypted_index = (current_index + 13) % 26
#   LETTERS_ARRAY[encrypted_index]
# end

def decrypt_char(char)
  return char unless LETTERS_ARRAY.index(char.downcase)
  current_index = LETTERS_ARRAY.index(char.downcase)
  decrypted_index = (current_index - ENCRYPTION_KEY) % LETTERS_ARRAY.size
  LETTERS_ARRAY[decrypted_index]
end

def decrypt_word(word)
  result = ''
  word.each_char { |char| result << decrypt_char(char) }
  result.capitalize
end

def decrypt_name(name)
  arr = name.split
  arr.map! { |word| decrypt_word(word) }.join(' ')
end
#
# puts encrypt_char('a') == 'n'
# puts encrypt_char('z') == 'm'
# puts encrypt_char('h') == 'u'
#
# puts decrypt_char('n') == 'a'
# puts decrypt_char('m') == 'z'
# puts decrypt_char('u') == 'h'

puts decrypt_name('Nqn Ybirynpr')
puts decrypt_name('Tenpr Ubccre')
puts decrypt_name('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')
