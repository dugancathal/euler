require 'minitest/autorun'
require 'minitest/pride'

require_relative 'palindrome'

class PalindromeTest < Minitest::Test
  def test_two_digit_multiple_palindrome
    assert_equal 9009, Palindrome.find(2)
  end

  def test_three_digit_multiple_palindrome
    assert_equal 0, Palindrome.find(3)
  end
end
