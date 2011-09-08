def num_sols(p)
  sols = 0

  ((p/3)..p).each do |c|
    (1..c).each do |a|
      b = p - (a + c)

      next if b <= 0

      if a * a + b * b == c * c
        sols += 1 
      end

    end
  end

  return sols
end

answer, max = 0, 0
12.upto(1000).each do |p|
  if (buf = num_sols(p)) > max
    max = buf
    answer = p
  end
end
puts answer
