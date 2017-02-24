require 'minitest/autorun'

class OddTest < MiniTest::Test
  def test_odd_value
    odd_nums = [1,3,5,7,9,11]
    odd_nums_results = odd_nums.map(&:odd?)

    even_nums = [10, 12, 14, 16, 18, 20]
    even_nums_results = even_nums.map(&:odd?)

    assert_equal([true] * 6, odd_nums_results)
    assert_equal([false] * 6, even_nums_results)
  end
end
