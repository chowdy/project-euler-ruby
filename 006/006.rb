square_of_sums, sum_of_squares = 0, 0
(1..100).each do |i|
  sum_of_squares += i * i 
  square_of_sums += i
end
square_of_sums *= square_of_sums

puts (sum_of_squares - square_of_sums)
