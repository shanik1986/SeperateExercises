def increment(arr)
  idx = 0
  result = []
  while idx < arr.size
    result << arr[idx] + 1
    idx += 1
  end

  result
end

def map(arr)
  idx = 0
  result = []

  while idx < arr.size
    result << yield(arr[idx])
    idx += 1
  end

  result
end

arr = [1,2,3,4]
p increment(arr)
p map(arr) { |num| num + 1 }
p map(arr) { |num| num + 2 }
p map(arr) { |num| num + 3 }

# module Delegatable
#   def delegate; end
# end
#
# class Employee
#   attr_reader :name, :serial_num, :type, :vacation_days, :desk
#   def initialize(name, serial_num)
#     @name = name
#     @serial_num = serial_num
#   end
#
#   def to_s
#     <<~DETAILS
#     Name: #{name}
#     Type: #{type}
#     Serial number: #{serial_num}
#     Vacation days: #{vacation_days}
#     Desk: #{desk}
#     DETAILS
#
#   end
# end
#
# class Regular < Employee
#   def initialize(name, serial_num)
#     super
#     @type = 'Regular'
#     @vacation_days = 10
#     @desk = 'Cubicle'
#   end
# end
#
# class PartTime < Employee
#   def initialize(name, serial_num)
#     super
#     @type = 'Part-time'
#     @vacation_days = 0
#     @desk = 'Open space'
#   end
# end
#
# class Executive < Employee
#   include Delegatable
#
#   def initialize(name, serial_num)
#     super
#     @type = 'Executive'
#     @vacation_days = 20
#     @desk = 'Corner office'
#   end
# end
#
# class Manager < Employee
#   include Delegatable
#   def initialize(name, serial_num)
#     super
#     @type = 'Manager'
#     @vacation_days = 14
#     @desk = 'Private office'
#   end
# end
#
# joe = Regular.new('Dave', 1234567)
# jim = PartTime.new('Jim', 123)
# shani = Manager.new('Shani', 123)
# moria = Executive.new('Moria', 123)

# class Person
#   attr_accessor :name, :weight, :height
#   @@total_people = 0
#
#   def initialize(name, weight, height)
#     @@total_people += 1
#     @name = name
#     @weight = weight
#     @height = height
#   end
#
#   def self.total_people
#     @@total_people
#   end
#
#   def change_info(name, weight, height)
#     self.name = name
#     self.weight = weight
#     self.height = height
#   end
# end
#
# bob = Person.new('bob', 185, 70)
#
# bob.change_info('jake', 1, 1)
#
# puts bob.name, bob.weight, bob.height

# module Biter
#   def bite
#     puts "Biting!"
#   end
# end
#
# class Dog
#   def initialize(name, color, weight_in_lbs)
#     @name = name
#     @color = color
#     @weight_in_lbs = weight_in_lbs
#   end
#
#   def bark
#     puts 'Whoof whoof!'
#   end
# end
#
# class Boxer < Dog
#   include Biter
#
#   def initialize(name, color, weight_in_lbs)
#     super
#   end
#
#   def drool
#     puts "Drooling... a lot"
#   end
# end
#
# dave = Boxer.new('Dave', 'Brown', 150)
#
# dave.bite
