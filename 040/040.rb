count = 1
str = ' ' # effectively index 0 -> 1 for our purposes.
while str.length < 1_000_000 + 1
  str += count.to_s
  count += 1
end
puts str.split(//).values_at(1, 10, 100, 1000, 10000, 100000, 1000000).inject(1) { |prod,i| prod * i.to_i }
