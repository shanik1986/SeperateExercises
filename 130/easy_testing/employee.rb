class NoExperienceError < RuntimeError; end

class Employee
  attr_reader :experience

  def initialize
    @experience = 5
  end

  def hire
    raise NoExperienceError if experience < 10
  end
end
