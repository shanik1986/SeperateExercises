# My Solution
#=============
# def each_cons(arr, number_of_items)
#   return nil if arr.size < number_of_items
#
#   arr[0..-number_of_items].each_index do |idx|
#     yield(*arr[idx..(idx + number_of_items - 1)])
#   end
#   nil
# end

# Their Solution:
# ==================
def each_cons(array, number_of_items)
  array.each_index do |index|
    break if (index + number_of_items - 1) >= array.size
    yield(*array[index..(index + number_of_items - 1)])
  end
end

hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
puts hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
puts hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
puts hash == { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
puts hash == { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
puts hash == {}
