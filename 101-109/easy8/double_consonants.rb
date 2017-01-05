VOWELS = %w(a e i o u)

def double_consonants(str)
  result = ''
  str.each_char do |char|
    result += if char =~ /[a-zA-Z]/ && char =~ /[^aieouAIEOU]/
                char * 2
              else
                char
              end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
