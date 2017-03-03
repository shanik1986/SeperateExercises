def bottles(n)
  return puts "No more bottles of beer on the wall" if n == 0

  puts "#{n} bottles of beer on the wall"
  bottles(n - 1)
end

bottles(5)

puts "This is a new method call:\n\n"
bottles(0)
