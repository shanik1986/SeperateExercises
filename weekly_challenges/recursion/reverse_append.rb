require 'pry'

def reverse_append2(arr, n)
  0.upto(n) { |i| arr << i }
  arr
end

def reverse_append(arr, n)
  binding.pry
  return arr if n < 0
  reverse_append(arr, n - 1)
  binding.pry
  arr << n
end

# puts reverse_append([], -1) == []
# puts reverse_append([], 0) == [0]
# puts reverse_append([], 1) == [0, 1]
puts reverse_append([], 2) == [0, 1, 2]
