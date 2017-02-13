module Walkable
  def name
    self.class == Nobility ? "#{title} #{@name}" : @name
  end

  def walk
    "#{name} #{gait} forward"
  end
end

class Nobility
  include Walkable

  attr_reader :title

  def initialize(name, title)
    @name = name
    @title = title
  end

  private

  def gait
    "struts"
  end
end

class Person
  include Walkable
  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  include Walkable
  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable
  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

mike = Person.new("Mike")
puts mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
puts kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
puts flash.walk
# => "Flash runs forward"

byron = Nobility.new("Byron", "Lord")
puts byron.walk
