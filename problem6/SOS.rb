class Sos
  attr_reader :range
  def initialize(range)
    @range = range
  end

  def sum_of_squares
    range.reduce(0) {|memo, i| memo + i**2}
  end

  def square_of_sums
    range.reduce(0, :+) ** 2
  end

  def difference
    (sum_of_squares - square_of_sums).abs
  end
end
