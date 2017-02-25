require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class TransarctionTest < MiniTest::Test
  def setup
    @cash_register = CashRegister.new(100)

    @transaction = Transaction.new(10)
  end

  def test_prompt_for_payment
    input = StringIO.new('10')
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal(10, @transaction.amount_paid)
  end
end
