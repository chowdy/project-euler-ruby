# 500_000 cannot be less than 1_000_000 chars. Could probably
# pick a better celing, but this solution is fast enough.
str = ' ' + (1..500_000).to_a.join('')
indices = [1, 10, 100, 1_000, 10_000, 100_000, 1_000_000]
puts str.chars.to_a.values_at(*indices).map { |i| i.to_i }.inject(&:*)
