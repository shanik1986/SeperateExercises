def merge (arr1, arr2)
  long_arr = arr1.size >= arr2.size ? arr1 : arr2
  short_arr = long_arr == arr1 ? arr2 : arr1

  result = []
  long_arr.each_index do |i|
    result << long_arr[i]
    result << short_arr[i] unless short_arr[i].nil?
  end

  result.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
