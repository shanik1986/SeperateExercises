FIZZ = 3
BUZZ = 5

def fizzbuzz(start, finish)
  start.upto(finish) do |i|
    if i % (FIZZ * BUZZ) == 0
      p "FizzBuzz"
    elsif i % BUZZ == 0
      p "Buzz"
    elsif i % FIZZ == 0
      p "Fizz"
    else
      p i
    end
  end
end

fizzbuzz(1,15)
