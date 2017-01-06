def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits (num, num_of_digits)
  return num if num_of_digits == 1
  num_of_digits -= 1

  string = num.to_s
  last = string[-num_of_digits..-1]
  first = string[0..(-num_of_digits) - 1]

  (first[0..-2] + last + first[-1]).to_i
end

def max_rotation(num)
  num.to_s.size.downto(2) { |i| num = rotate_rightmost_digits(num, i) }

  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
