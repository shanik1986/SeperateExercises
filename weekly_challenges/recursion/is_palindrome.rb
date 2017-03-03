def palindrome?(str)
  return true if str.empty? || str.size == 1

  str[0] == str[-1] ? palindrome?(str[1..-2]) : false
end


puts palindrome?('abba') == true
puts palindrome?('abcba') == true
puts palindrome?('a') == true
puts palindrome?('ab') == false
puts palindrome?('abc') == false
