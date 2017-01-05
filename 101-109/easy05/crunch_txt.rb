require 'pry'

def crunch(str)
  result = ''
  str.chars
  str.chars.each_with_index do |char, index|
    result += char if char != str[index + 1]
  end
  result
end



p crunch('ddaaiillyyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
