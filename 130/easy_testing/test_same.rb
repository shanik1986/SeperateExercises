require 'minitest/autorun'

class Queue
  def process
    self
  end
end

class ProcessTest < MiniTest::Test
  def test_same
    list = Queue.new
    assert_same(list, list.process)
  end
end
