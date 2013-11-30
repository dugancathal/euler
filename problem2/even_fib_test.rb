require 'minitest/autorun'
require 'minitest/pride'

require_relative 'even_fib'

class EvenFibTest < Minitest::Test
  def test_fib_til_10
    assert_equal 10, EvenFib.new.sum_until(10)
  end

  def test_fib_til_50
    assert_equal 44, EvenFib.new.sum_until(50)
  end

  def test_fib_til_4_000_000
    assert_equal 0, EvenFib.new.sum_until(4_000_000)
  end
end
