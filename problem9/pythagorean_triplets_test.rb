require 'minitest/autorun'
require 'minitest/pride'

require_relative 'pythagorean_triplets'

class PythagoreanTripletsTest < Minitest::Test
  def test_euler
    assert_equal [0, 0, 0], PythagoreanTriplets.find(1000)
  end
end
