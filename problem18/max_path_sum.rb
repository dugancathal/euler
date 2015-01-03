class MaxPathSum < Struct.new(:pyramid)
  def solve
    nodes = parse(pyramid)
    find_sum(nodes).first.first
  end

  def parse(nums)
    nums.lines.map {|line| line.split.map(&:to_i) }
  end

  def find_sum(pyramid)
    return pyramid if pyramid.size == 1
    replace_last_row_of(pyramid, with: max_consecutives_for(pyramid.pop))
    find_sum(pyramid)
  end

  private

  def max_consecutives_for(row)
    row.each_cons(2).map(&:max)
  end

  def replace_last_row_of(pyramid, with:)
    pyramid[-1] = pyramid[-1].zip(with).map {|left, right| left + right}.flatten
  end
end
