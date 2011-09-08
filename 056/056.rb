answer = 0
(1...100).each do |a|
  (1...100).each do |b|
    sum = (a ** b).to_s.chars.map { |i| i.to_i }.inject(&:+)
    answer = sum if sum > answer
  end
end
puts answer
