require 'minitest/autorun'
require 'minitest/pride'

require_relative 'prime_factor'

class PrimeFactorTest < Minitest::Test
  def test_13195
    assert_equal 29, PrimeFactor.biggest_for(13195)
  end

  def test_600851475143
    assert_equal 0, PrimeFactor.biggest_for(600_851_475_143)
  end
end
