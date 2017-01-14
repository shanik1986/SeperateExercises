def merge(arr1, arr2)
  result = []
  arr1_index = 0
  arr2_index = 0

  loop do
    if arr1_index == arr1.size
      result += arr2[arr2_index..-1]
      break
    elsif arr2_index == arr2.size
      result += arr1[arr1_index..-1]
      break
    end

    if arr1[arr1_index] < arr2[arr2_index]
      result += [arr1[arr1_index]]
      arr1_index += 1
    else
      result += [arr2[arr2_index]]
      arr2_index += 1
    end
  end

  result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
