require 'minitest/autorun'
require 'minitest/pride'

require_relative 'triangle_numbers'

class TriangleNumbersTest < Minitest::Test
  def test_divisors
    assert_equal 6, TriangleNumbers.new(7).num_divisors
  end

  def test_triangle_number
    assert_equal 28, TriangleNumbers.new(7).triangle_number
  end

  def test_euler
    i = 12374
    num_divisors = 0

    while num_divisors <= 499
      i += 1
      next if i % 2 == 0
      num_divisors = TriangleNumbers.new(i).num_divisors
    end

    assert_equal 0, TriangleNumbers.new(i).triangle_number
  end
end
