require 'pry'

def transpose(matrix)
  result = []
  columns = matrix.size
  rows = matrix[0].size

  rows.times do |column_index|
    temp_row = []
    column.times |row_index| { temp_row << matrix[row_index][column_index] }
    result << temp_row
  end
  
  result
end

# def transpose!(matrix)
#   matrix[0][0], matrix[0][0] = matrix[0][0], matrix[0][0]
#   matrix[1][0], matrix[0][1] = matrix[0][1], matrix[1][0]
#   matrix[2][0], matrix[0][2] = matrix[0][2], matrix[2][0]
#   matrix[1][1], matrix[1][1] = matrix[1][1], matrix[1][1]
#   matrix[2][1], matrix[1][2] = matrix[1][2], matrix[2][1]
#   matrix[2][2], matrix[2][2] = matrix[2][2], matrix[2][2]
# end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
