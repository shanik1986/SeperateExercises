SCORES = {
          90..100 => 'A', 80..89 => 'B', 70..79 => 'C',
          60..69 => 'D', 0..60 => 'F'
        }

def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3) / 3
  SCORES.find { |key, value| key.include?(average) }.last
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
