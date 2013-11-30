class ConsecutiveProducts
  attr_reader :number
  def initialize(number)
    @number = number.gsub(/\s+/, '')
  end

  def largest_product_of(n)
    max = 0
    each_consecutive_chunk_of(n) do |numbers|
      product = numbers.scan(/\d/).reduce(1) {|sum, i| sum * i.to_i }
      max = product if max < product
    end
    max
  end

  def each_consecutive_chunk_of(count)
    return to_enum(:each_consecutive_chunk_of, count) unless block_given?
    iterations = number.length - count
    0.upto(iterations) do |i|
      yield number[i..(i+count-1)]
    end
  end
end
