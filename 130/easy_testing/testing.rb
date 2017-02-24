require 'minitest/autorun'

class IncludesRefutation < MiniTest::Test
  def test_not_included
    list = ['xy']
    refute_includes(list, 'xyz')
  end
end
