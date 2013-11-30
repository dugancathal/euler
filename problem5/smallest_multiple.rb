class SmallestMultiple
  def self.find(range)
    smallest_multiple = 1
    range.each do |i|
      smallest_multiple *= i / greatest_common_divisor_for(smallest_multiple, i)
    end
    smallest_multiple
  end

  def self.greatest_common_divisor_for(a, b)
    while b != 0
      c = b
      b = a % b
      a = c
    end
    a
  end
end
