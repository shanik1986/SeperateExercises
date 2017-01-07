def balanced?(str)
  counter = 0

  str.each_char do |char|
    counter += 1 if char == '('
    counter -= 1 if char == ')'
    break if counter < 0
  end

  counter == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
