require 'minitest/autorun'
require_relative 'text'

class TextTest < MiniTest::Test
  def setup
    @file = File.open('sample_text.txt', 'r')
  end

  def test_swap
    program = Text.new(@file.read)

    number_of_a_before = program.text.count('a')
    number_of_e_before = program.text.count('e')

    program.swap('a', 'e')
    number_of_e_after = number_of_e_before + number_of_a_before

    assert_equal(0, program.text.count('a'))
    assert_equal(number_of_e_after, program.text.count('e'))
  end

  def test_word_count
    program = Text.new(@file.read)

    assert_equal(72, program.word_count)
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end
