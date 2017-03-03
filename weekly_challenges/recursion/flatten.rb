require 'pry'

def flatten(arr, result = [])

  arr.each_with_object(result) do |item|
    item.class == Array ? flatten(item, result) : result << item
  end
end

p flatten([[1, 2], [3, 4]])# == [1, 2, 3, 4]
p flatten([[1, [8, 9]], [3, 4]])# == [1, 8, 9, 3, 4]
