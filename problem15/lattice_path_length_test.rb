require 'minitest/autorun'
require 'minitest/pride'

require_relative 'lattice_path'

class LatticePathLengthTest < Minitest::Test
  def test_basics
    assert_equal 2, LatticePathLength.for('1x1')
    assert_equal 6, LatticePathLength.for('2x2')
    assert_equal 20, LatticePathLength.for('3x3')
  end

  def test_euler
    assert_equal 0, LatticePathLength.for('20x20')
  end

  def test_error_on_not_square
    assert_raises ArgumentError do
      LatticePathLength.for('3x4')
    end
  end
end
