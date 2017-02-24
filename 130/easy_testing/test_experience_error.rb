require 'minitest/autorun'
require_relative 'employee'

class TestExperience < MiniTest::Test
  def setup
    @bob = Employee.new
  end

  def test_experience
    assert_raises(NoExperienceError) { @bob.hire }
  end
end
