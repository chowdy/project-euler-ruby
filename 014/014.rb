@seen = {}
answer, max = 0, 0
(2...1_000_000).each do |i|
  count = 0
  buf = i

  while buf != 1
    if not (seen = @seen[buf]).nil?
      count += seen
      break
    end

    buf = buf.even? ? buf / 2 : 3 * buf + 1
    count += 1
  end

  @seen[i] = count

  if count > max
    max = count
    answer = i
  end
end
puts answer
