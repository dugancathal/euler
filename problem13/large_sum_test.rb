require 'minitest/autorun'
require 'minitest/pride'

require_relative 'large_sum'

class LargeSumTest < Minitest::Test
  def test_summations
    assert_equal 45, LargeSum.new("14\n11\n20").sum
  end

  def test_euler
    sum = LargeSum.new(File.read('numbers.txt')).sum
    assert_equal '', sum.to_s[0..9]
  end
end
