require 'minitest/autorun'
require 'minitest/pride'

require_relative 'SOS'

class SosTest < Minitest::Test
  def test_sum_of_squares_in_range
    assert_equal 5, Sos.new(1..2).sum_of_squares
    assert_equal 14, Sos.new(1..3).sum_of_squares
  end

  def test_square_of_sums_in_range
    assert_equal 9, Sos.new(1..2).square_of_sums
    assert_equal 36, Sos.new(1..3).square_of_sums
  end

  def test_difference_of_sos_and_sos
    assert_equal 2640, Sos.new(1..10).difference
    assert_equal 0, Sos.new(1..100).difference
  end
end
