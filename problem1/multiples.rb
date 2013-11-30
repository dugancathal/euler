class Multiples
  def self.sum_less_than(num)
    3.upto(num-1).inject(0) do |sum, i|
      if multiple_of_3?(i) || multiple_of_5?(i)
        sum + i
      else
        sum
      end
    end
  end

  [3, 5].each do |i|
    define_singleton_method("multiple_of_#{i}?") do |n|
      n % i == 0
    end
  end
end
