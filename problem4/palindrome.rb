class Palindrome
  def self.find(digit_length)
    starting_point = (10 ** digit_length) - 1
    max = 0
    starting_point.downto(1) do |i|
      starting_point.downto(1) do |j|
        max = i * j if palindrome?(i * j) && max < i * j
      end
    end
    max
  end

  def self.palindrome?(number)
    number.to_s.reverse == number.to_s
  end
end
