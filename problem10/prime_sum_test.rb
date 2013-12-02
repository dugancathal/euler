require 'minitest/autorun'
require 'minitest/pride'

require_relative 'prime_sum'

class PrimeSumTest < Minitest::Test
  def test_sum_of_primes_below_10
    assert_equal 17, PrimeSum.for_less_than(10)
  end

  def test_sum_of_primes_below_2_000_000
    assert_equal 0, PrimeSum.for_less_than(2_000_000)
  end
end
