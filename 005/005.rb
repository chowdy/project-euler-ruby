answer = 0

# test 1 to 10
# MAX = 10
MAX = 20
i = MAX
while true

  divided_evenly = 0

  (1..MAX).each do |j|
    break if not (i % j).zero?
    divided_evenly = j
  end

  if divided_evenly == MAX
    answer = i
    break
  end

  i += MAX
end

puts answer
