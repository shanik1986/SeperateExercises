def zip(arr1, arr2)
  last_index = arr1.size
  current_index = 0
  result = []

  while current_index < last_index
    result << [arr1[current_index], arr2[current_index]]
    current_index += 1
  end

  result
end

puts zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
