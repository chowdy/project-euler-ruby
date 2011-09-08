require 'mathn'

max = 0
max_a, max_b = 0, 0
(-1_000...0).each do |a|
  (1...1_000).each do |b|
    n = 0

    while (n*n + a*n + b).prime?
      n += 1
    end

    if (n > max)
      max = n
      max_a, max_b = a, b
    end
  end
end
puts max_a * max_b
