def reverse(str, result = '')
  return result if str.empty?

  result << str[-1]
  reverse(str[0..-2], result)
end

p reverse('abcde') == 'edcba'
p reverse('') == ''
