require 'minitest/autorun'
require 'minitest/pride'
require_relative 'multiples'

class MultiplesTest < Minitest::Test
  def test_sum_of_multiples_less_than_7
    assert_equal 14, Multiples.sum_less_than(7)
  end

  def test_sum_of_multiples_less_than_10
    assert_equal 23, Multiples.sum_less_than(10)
  end

  def test_sum_multiples_less_than_1000
    assert_equal 233168, Multiples.sum_less_than(1000)
  end
end
