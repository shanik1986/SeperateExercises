def prime?(num, divisor = num - 1)
  return true if divisor == 1

  if num % divisor == 0
    return false
  else
    prime?(num, divisor - 1)
  end
end

p prime?(2) == true
p prime?(3) == true
p prime?(4) == false
p prime?(5) == true
p prime?(6) == false
