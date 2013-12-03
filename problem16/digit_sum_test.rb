require 'minitest/autorun'
require 'minitest/pride'

require_relative 'digit_sum'

class DigitSumTest < Minitest::Test
  def test_two_to_the_fifteenth
    assert_equal 26, DigitSum(2**15)
  end

  def test_euler
    assert_equal 0, DigitSum(2**1000)
  end
end
