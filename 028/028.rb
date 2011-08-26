# Lengths are only odd.
lengths = (3..1001).select { |i| not (i%2).zero? }

answer = 1
cur_val = 1
lengths.each do |i|
  increment_amount = i - 1
  # Four corners
  4.times do
    cur_val += increment_amount
    answer += cur_val
  end
end
puts answer
