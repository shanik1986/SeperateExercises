# def triangle(num)
#   (num).downto(1) { |i| puts ' ' * (i - 1) + '*' * (num - i)}
# end


# def triangle(num)
#   spaces = num - 1
#   stars = 1
#
#   num.times do |n|
#     puts (' ' * spaces) + ('*' * stars)
#     spaces -= 1
#     stars += 1
#   end
# end

triangle(9)
