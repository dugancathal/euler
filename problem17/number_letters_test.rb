require 'minitest/autorun'
require 'minitest/pride'

require_relative 'number_letters'

class NumberLettersTest < Minitest::Test
  def test_translator_gets_one
    assert_equal 'one', NumberLetters::Translator.new(1).to_s
  end

  def test_translator_gets_zero
    assert_equal 'zero', NumberLetters::Translator.new(0).to_s
  end

  def test_translator_gets_ten
    assert_equal 'ten', NumberLetters::Translator.new(10).to_s
  end

  def test_translator_gets_twenty_one
    assert_equal 'twenty one', NumberLetters::Translator.new(21).to_s
  end

  def test_translator_gets_one_hundred_thirty_four
    assert_equal 'one hundred and thirty four', NumberLetters::Translator.new(134).to_s
  end

  def test_translator_gets_one_hundred_fifteen
    assert_equal 'one hundred and fifteen', NumberLetters::Translator.new(115).to_s
  end

  def test_translator_gets_three_hundred_six
    assert_equal 'three hundred and six', NumberLetters::Translator.new(306).to_s
  end

  def test_translator_gets_three_hundred_and_forty_two
    assert_equal 'three hundred and forty two', NumberLetters::Translator.new(342).to_s
  end

  def test_translator_gets_one_thousand
    assert_equal 'one thousand', NumberLetters::Translator.new(1000).to_s
  end

  def test_gets_19_for_one_to_five
    assert_equal 19, NumberLetters.new(1..5).count_letters
  end

  def test_gets_23_for_three_hundred_forty_two
    assert_equal 23, NumberLetters.new(342..342).count_letters
  end

  def test_euler
    assert_equal 0, NumberLetters.new(1..1000).count_letters
  end
end
