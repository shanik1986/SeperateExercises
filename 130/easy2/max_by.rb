def max_by(arr)
  return nil if arr.empty?

  max_item = arr.first
  max_sum = yield(arr.first)

  arr[1..-1].each do |item|
    current_sum = yield(item)
    if current_sum > max_sum
      max_sum = current_sum
      max_item = item
    end
  end

  max_item
end

puts max_by([1, 5, 3]) { |value| value + 2 } == 5
puts max_by([1, 5, 3]) { |value| 9 - value } == 1
puts max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
puts max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
puts max_by([-7]) { |value| value * 3 } == -7
puts max_by([]) { |value| value + 5 } == nil
