 def diamond(num)
  triangle(num, 'up')
  puts '*' * num
  triangle(num, 'down')
end

def triangle(num, direction)

  if direction == 'up'
    stars = 1
    adjuster = 2
  elsif direction == 'down'
    stars = num - 2
    adjuster = -2
  end

  (num / 2).times do |_|
    spaces = num - stars
    puts ' ' * (spaces / 2) + '*' * stars + ' ' * (spaces / 2)
    stars += adjuster
  end
end

diamond(71)
