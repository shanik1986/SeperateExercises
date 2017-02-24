def missing(arr)
  # Solution with using blocks
  # ============================

  # range = ((arr.first)..(arr.last))
  #
  # range.each_with_object([]) do |number, result|
  #   result << number unless arr.include?(number)
  # end

  # Without using blocks
  #======================

  current_number = arr.first
  result = []
  while current_number < arr.last
    result << current_number unless arr.include?(current_number)
    current_number += 1
  end
  result
end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []
