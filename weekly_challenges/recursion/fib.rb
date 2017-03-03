def fib(n)
  return 0 if n == 1
  return 1 if n == 2

  fib(n - 2) + fib(n - 1)
end

puts fib(5) == 3
puts fib(1) == 0
puts fib(6) == 5
puts fib(7) == 8
