require 'minitest/autorun'

class EqualityTest < MiniTest::Test
  def test_downcase
    assert_equal('xyz', 'XYZ'.downcase)
  end
end
