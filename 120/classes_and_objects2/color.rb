class Cat
  attr_reader :name

  COLOR = "purple"

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, my name is #{name} and I am #{COLOR}"
  end
end

kitty = Cat.new("Lucy")
kitty.greet
