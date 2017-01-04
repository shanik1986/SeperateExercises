def find_fibonacci_index_by_length(num)
  first = 1
  second = 1
  index = 3

  while (first + second).to_s.size != num
    sum = first + second
    first = second
    second = sum
    index += 1
  end
  index
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
