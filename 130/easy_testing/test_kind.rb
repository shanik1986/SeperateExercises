require 'minitest/autorun'

class KindTest < MiniTest::Test
  def test_kind
    assert_kind_of(Numeric, 3)
  end
end
