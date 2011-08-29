answer = 0
(1...100).each do |a|
  (1...100).each do |b|
    sum = (a ** b).to_s.split(//).inject(0) { |sum,i| sum + i.to_i }
    answer = sum if sum > answer
  end
end
puts answer
