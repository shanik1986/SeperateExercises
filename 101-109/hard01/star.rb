def star(grid_size)
  max_distance = grid_size / 2

  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }

end

def print_row(grid_size, distance)
  spaces = ' ' * (distance - 1)
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

star(11)
