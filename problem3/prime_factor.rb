require 'prime'
class PrimeFactor
  def self.biggest_for(num)
    num.prime_division.map(&:first).sort.last
  end
end
