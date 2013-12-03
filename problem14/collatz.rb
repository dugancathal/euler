class Collatz < Struct.new(:start)
  def length
    length = 1
    current = start
    while current != 1
      if self.class.cache_for(current)
        return length + self.class.cache_for(current) - 1
      end
      current = Rule.new(current).execute
      length += 1
    end
    self.class.cache(start, length)
  end

  def self.cache(num, distance)
    (@@cache ||= {})[num] = distance
  end

  def self.cache_for(num)
    (@@cache ||= {})[num]
  end

  private

  class Rule < Struct.new(:number)
    def execute
      number.even? ? number / 2 : 3 * number + 1
    end
  end
end
