# def running_total(arr)
#   sum_arr = []
#   0.upto(arr.size - 1) do |i|
#     sum_arr += [arr[0, i + 1].inject(:+)]
#   end
#   sum_arr
# end

def running_total(arr)
  sum = 0
  arr.each_with_object([]) do |item, sum_arr|
    sum += item
    sum_arr << sum
  end
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
