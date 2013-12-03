class LargeSum
  attr_reader :text
  def initialize(text)
    @text = text
  end

  def sum
    numbers.reduce(0, :+)
  end

  private
  def numbers
    text.scan(/\d+/).map(&:to_i)
  end
end
