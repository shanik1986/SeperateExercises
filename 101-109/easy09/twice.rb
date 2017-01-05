def is_double?(num)
  string = num.to_s
  return false if string.size.odd?

  middle_index = (string.size / 2) - 1
  first = string[0..middle_index]
  second = string[(middle_index + 1)..-1]

  first == second
end

def twice(num)
  is_double?(num) ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
