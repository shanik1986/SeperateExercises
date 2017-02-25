require 'minitest/autorun'
require_relative 'transaction'
require_relative 'cash_register'

class CashRegisterTest < MiniTest::Test

  def setup
    @cash_register = CashRegister.new(100)

    @transaction = Transaction.new(10)
  end

  def test_accept_money
    @transaction.amount_paid = 10

    previous_amount = @cash_register.total_money
    @cash_register.accept_money(@transaction)
    current_amount = @cash_register.total_money

    assert_equal(previous_amount + 10, current_amount)
  end

  def test_change
    @transaction.amount_paid = 10
    assert_equal(0, @cash_register.change(@transaction))

    @transaction.amount_paid = 20
    assert_equal(10, @cash_register.change(@transaction))
  end

  def test_give_receipt
    @transaction.amount_paid = 30
    output = "You've paid $10.\n"

    assert_output(output) { @cash_register.give_receipt(@transaction) }
  end
end
