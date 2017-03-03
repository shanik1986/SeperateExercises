# ((((1) + 2) + 3) + 4)

def sum_upto(n)
  # Base case
  return 1 if n == 1
  sum_upto(n - 1) + n
end

# puts sum_upto(1) == 1
# puts sum_upto(2) == 3
# puts sum_upto(3) == 6
# puts sum_upto(4) == 10

puts sum_upto(6) == 21
