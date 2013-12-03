require 'prime'

class TriangleNumbers
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def num_divisors
    num_divisors = 1
    remainder = triangle_number
    Prime.take_while do |prime|
      return num_divisors * 2 if prime**2 > triangle_number

      exponent, remainder = exponent_for prime, remainder

      num_divisors *= exponent

      true if remainder != 1
    end
    num_divisors
  end

  def exponent_for(prime, remainder)
    exponent = 1
    while remainder % prime == 0
      exponent += 1
      remainder /= prime
    end
    [exponent, remainder]
  end

  def triangle_number
    @triangle_number ||= 1.upto(number).reduce(0, :+)
  end
end
