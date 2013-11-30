require 'minitest/autorun'
require 'minitest/pride'

require_relative 'smallest_multiple'

class SmallestMultipleTest < Minitest::Test
  def test_for_1_to_10
    assert_equal 2520, SmallestMultiple.find(1..10)
  end

  def test_for_1_to_20
    assert_equal 0, SmallestMultiple.find(1..20)
  end
end
