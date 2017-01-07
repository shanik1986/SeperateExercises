def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort

  return :invalid unless valid?(sides)

  symbol = if sides.count(side1) == 3
             :equilateral
           elsif sides.count(side1) > 1 || sides.count(side2) > 1
             :isosceles
           else
             :scalene
           end
  symbol
end

def valid?(sides)
  return false if sides[0] + sides[1] <= sides[2]
  return false unless sides.none? { |side| side <= 0 }
  true
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
