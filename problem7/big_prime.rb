require 'prime'

class BigPrime
  def self.get(i)
    Prime.take(i).last
  end
end
