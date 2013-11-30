require 'minitest/autorun'
require 'minitest/pride'

require_relative 'big_prime'

class BigPrimeTest < Minitest::Test
  def test_sanity
    assert_equal 2, BigPrime.get(1)
  end

  def test_euler
    assert_equal 0, BigPrime.get(10_001)
  end
end
