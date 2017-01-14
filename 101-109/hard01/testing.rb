def merge_compare(arr1, arr2)
  arr2_index = 0
  result = []

  arr1.each do |item|
    while arr2_index < arr2.size && arr2[arr2_index] < item
      result << arr2[arr2_index]
      arr2_index += 1
    end
    result << item
  end

  result + arr2[arr2_index..-1]
end

p merge_compare([5], [1, 7])
