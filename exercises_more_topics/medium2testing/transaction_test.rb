require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!
require_relative 'transaction'

class TransactionTest < Minitest::Test
  def test_prompt_for_payment
    transaction = Transaction.new(30)
    input = StringIO.new('30')
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal transaction.amount_paid, 30
  end
end