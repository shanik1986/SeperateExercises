# def fibonacci(n)
#   return 1 if n == 1 || n == 2
#   fibonacci(n - 1) + fibonacci(n - 2)
# end

def fibonacci(n)
  sum = 0
  first = 1
  second = 1

  1.upto(n) do
    first, second = second, sum
    sum = first + second
  end

  sum
end


def fibonacci_last(n)
  fibonacci(n).to_s[-1].to_i
end

p fibonacci_last(1_000_007)
