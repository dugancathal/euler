require 'minitest/autorun'
require 'minitest/pride'

require_relative 'consecutive_products'

class ConsecutiveProductsTest < Minitest::Test
  def test_each_consecutive_chunk_of_returns_an_enumerable
    assert_kind_of Enumerable, ConsecutiveProducts.new('123456789').each_consecutive_chunk_of(5)
  end

  def test_each_consecutive_chunk_of
    list = ConsecutiveProducts.new('123456789').each_consecutive_chunk_of(5).to_a
    assert_equal ['12345', '23456', '34567', '45678', '56789'], list
  end

  def test_largest_product
    assert_equal 9, ConsecutiveProducts.new('11133111').largest_product_of(3)
  end

  def test_euler
    assert_equal 0, ConsecutiveProducts.new(File.read('big_number.txt')).largest_product_of(5)
  end
end
