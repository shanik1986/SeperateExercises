def sum_of_sums(arr)
  result = 0
  counter = 1

  arr.each do |outer_number|
    counter.times { |inner_number| result += arr[inner_number] }
    counter += 1
  end

result
end

# sum_of_sums([3, 5, 2])

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
