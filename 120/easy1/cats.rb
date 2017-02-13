class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  def initialize(name, age, color)
    @color = color
    super(name, age)
  end

  def to_s
    "My cat #{name} is #{age} years old and has #{color} fur"
  end

  private

  attr_reader :name, :age, :color
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch
