answer = 0
chain = []
(2...1_000_000).each do |i|

  buf = [i]
  while buf.last != 1
    n = buf.last
    if n.even?
      buf << n / 2
    else
      buf << (3*n) + 1
    end
  end

  if buf.length > chain.length
    answer = i
    chain = buf
  end
end

puts answer
