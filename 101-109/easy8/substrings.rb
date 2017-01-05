def substrings(str)
  result = []
  str.size.times do |outer_index|
    outer_index.upto(str.size - 1) { |index| result << str[outer_index..index] }
  end
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
