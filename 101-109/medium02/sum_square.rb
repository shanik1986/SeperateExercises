def sum_square_difference(num)
  sum_of_squares = compute_sum_of_squares(num)
  square_of_sums = compute_square_of_sums(num)

  square_of_sums - sum_of_squares
end

def compute_square_of_sums(num)
  result = 0
  1.upto(num)  { |i| result += i }
  result ** 2
end

def compute_sum_of_squares(num)
  result = 0
  1.upto(num) { |i| result += i ** 2 }
  result
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
