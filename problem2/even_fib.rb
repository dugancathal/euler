class EvenFib
  def initialize
  end

  def sum_until(number)
    fib.select {|x| x % 2 == 0 }.take_while {|x| x < number }.reduce(&:+)
  end

  def fib
    (1..Float::INFINITY).
      lazy.
      with_object([0,1]).
      map {|x, last| last[1] = last[0] + (last[0] = last[1]) }
  end
end
