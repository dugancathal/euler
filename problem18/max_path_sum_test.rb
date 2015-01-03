require 'minitest/autorun'
require 'minitest/pride'

require_relative 'max_path_sum'

class MaxPathSumTest < Minitest::Test
  def test_known
    pyramid = <<-PYRAMID
    3
    7 4
    2 4 6
    8 5 9 3
    PYRAMID
    assert_equal 23, MaxPathSum.new(pyramid).solve
  end

  def test_problem
    pyramid = File.read('problem.txt')
    assert_equal 1074, MaxPathSum.new(pyramid).solve
  end
end
