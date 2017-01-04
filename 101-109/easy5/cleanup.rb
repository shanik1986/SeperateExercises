def cleanup(str)
  str.gsub(/[^a-z]+/i, ' ')
end

p cleanup("---what's mY +*& line?")# == ' what s my line '
