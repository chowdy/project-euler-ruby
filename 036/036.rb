answer = 0
(1...1_000_000).each do |i|
  if (i.to_s == i.to_s.reverse) &&
     (i.to_s(2) == i.to_s(2).reverse)
    answer += i
  end
end
puts answer
