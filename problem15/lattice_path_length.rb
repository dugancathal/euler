class LatticePathLength
  def self.for(dimensions)
    raise ArgumentError unless dimensions.to_i == dimensions.scan(/\d+/).last.to_i
    length = dimensions.to_i
    (1..2*length).reduce(:*) / ((1..length).reduce(:*) ** 2)
  end
end
