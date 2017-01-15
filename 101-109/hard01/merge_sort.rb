def merge_sorted_lists(arr1, arr2)
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

def divide(array)
  # 1) Iterate through the array until I reach index == array.size / 2
  # 2) Make all the elements up to this point a sub array
  # 3) Does the sub array has more than one element?
  #   - Yes: Return to 1 when the sub array is now array
  #   - No: Go to next half of array and back to 1
  size = array.size
  return array if size == 1
  [divide(array[0...(size / 2)])] + [divide(array[(size / 2)...size])]
end

def semi_flatten(array)
  # 1) ITERATE - Map the outer_array
  #   (we want to map it to an array that can be used as a paramater
  #   for the merge_sorted_lists method)
  #   A) return_value = ELEMENT
  #   B) LOOP until ELEMENET.flatten == ELEMENET?
  #     - IF ELEMENT[0] + ELEMENT[1] == (ELEMENT[0] + ELEMENT[1]).flatten
  #       * return_value = merge_sorted_lists(ELEMENET[0], ELEMENET[1])
  #     - ELSE
  #       * semi_flatten(ELEMENT)
  #   C) RETURN ELEMENT as the transformed value
  #   D) More elements in outer_array?
  #     - YES: Back to 1 with next element
  #     - No: Keep going to 2
  # 2) merge_sorted_lists(oter_array[0], outer_array[1])

  array.map! do |element|
    until element.flatten == element
      if (element[0] + element[1]).flatten == element[0] + element[1]
        element = merge_sorted_lists(element[0], element[1])
      else
        semi_flatten(element)
      end
    end
    element
  end
  merge_sorted_lists(array[0], array[1])
end

def merge_sort(array)
  array = divide(array)
  semi_flatten(array)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) ==
             %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==
             [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
