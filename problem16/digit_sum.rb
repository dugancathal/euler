def DigitSum(num)
  num.to_s.chars.map {|i| i.to_i }.reduce(:+)
end