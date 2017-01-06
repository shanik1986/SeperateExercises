NUMBER_OF_LIGHTS = 1000

def toggle_multiples(arr, num)
  counter = 1
  while num * counter <= arr.size
    arr[(num * counter) - 1] = !arr[(num * counter) - 1]
    counter += 1
  end
end

arr = Array.new(NUMBER_OF_LIGHTS, false)

1.upto(NUMBER_OF_LIGHTS) { |i| toggle_multiples(arr, i) }

on = []
arr.each_index { |i| on += [i + 1] if arr[i] }

puts "The lights that are left on are #{on}"
