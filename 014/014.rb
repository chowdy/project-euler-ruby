answer, max = 0, 0
(2...1_000_000).each do |i|
  count = 0
  buf = i
  while (buf = (buf.even? ? buf / 2 : 3 * buf + 1)) != 1
    count += 1
  end

  if count > max
    max = count
    answer = i
  end
end
puts answer
