# def append(arr, n)
#   n.downto(0) { |i| arr << i }
#
#   arr
# end

# def append_recurse(arr, n)
#   return [n] + append_recurse([], n - 1) if n > 0
#
#   [0]
# end

def append_recurse2(arr, n)
  return arr if n < 0
  arr << n
  append_recurse2(arr, n - 1)
end

p append_recurse2([], 7)# == [2, 1, 0]
