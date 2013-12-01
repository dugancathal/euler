class PythagoreanTriplets
  def self.find(sum)
    1.upto(1000) do |b|
      a = (500000 - 1000 * b).to_f / (1000 - b).to_f;
      if a.floor === a && pythagorean?(a, b, 1000 - a - b)
        return [a, b, 1000 - a - b]
      end
    end
  end

  def self.pythagorean?(a, b, c)
    a ** 2 + b ** 2 == c ** 2
  end
end
