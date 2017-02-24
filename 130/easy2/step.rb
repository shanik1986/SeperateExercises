def step(starting_value, ending_value, increment)
  current_value = starting_value

  loop do
    yield(current_value)
    break if current_value + increment > ending_value
    current_value += increment
  end
  current_value
end

step(1, 9, 3) { |value| puts "value = #{value}" }
