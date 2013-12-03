require 'minitest/autorun'
require 'minitest/pride'

require_relative 'collatz'
$stdout.sync = true

class CollatzTest < Minitest::Test
  def test_13
    assert_equal 7, Collatz.new(10).length
    assert_equal 8, Collatz.new(20).length
    assert_equal 9, Collatz.new(40).length
    assert_equal 10, Collatz.new(13).length
  end

  def test_euler
    max = 1000.upto(1_000_000).max_by do |i|
      Collatz.new(i).length
    end
    assert_equal 0, max
  end
end
