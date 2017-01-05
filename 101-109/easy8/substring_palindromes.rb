def substrings(str)
  result = []
  str.size.times do |outer_index|
    outer_index.upto(str.size - 1) { |index| result << str[outer_index..index] }
  end
  result
end

def palindromes(str)
  substrings(str).select { |item| item == item.reverse && item.size > 1 }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
