require 'prime'

class PrimeSum
  def self.for_less_than(number)
    Prime.take_while {|i| i < number }.reduce(0, :+)
  end
end
