def oddities(arr)
  oddities_array = []
  (arr.size).times do |i|
    next if i.odd?
    oddities_array << arr[i]
  end
  oddities_array
end

def evenies(arr)
  evens_arr = []
  index = 1
  while index < arr.size - 1
    evens_arr << arr[index]
    index += 2
  end
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

puts evenies([2, 3, 4, 5, 6]) == [2, 4, 6]
puts evenies(['abc', 'def']) == ['abc']
puts evenies([123]) == [123]
puts evenies([]) == []
