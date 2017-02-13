class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name, :number_of_pets

  def initialize(name)
    @name = name
    @number_of_pets = 0
  end

  def increment_num_of_pets(num = 1)
    self.number_of_pets += num
  end

  private

  attr_writer :number_of_pets
end

class Shelter
  def initialize
    @adoptions = Hash.new([])
  end

  def adopt(owner, pet)
    owner.increment_num_of_pets
    self.adoptions[owner] = adoptions[owner] + [pet]
  end

  def print_adoptions
    adoptions.each do |owner, pets|
      puts "#{owner.name} has adopted the following pets:"
      pets.each { |pet| puts pet }
      puts
    end
    puts
  end

  protected

  attr_writer :adoptions

  private

  attr_reader :adoptions

end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
