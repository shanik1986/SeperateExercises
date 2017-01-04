def halvsies(arr)
  limit = arr.size.even? ? arr.size / 2 : (arr.size / 2) + 1

  first_half = []
  limit.times  { |i| first_half += [arr.shift] }
  [first_half] + [arr]


end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
