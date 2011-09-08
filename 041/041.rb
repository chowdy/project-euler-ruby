require 'mathn'

# 1 to 9 pandigitals are all divisible by 3
# same with 1 to 8
puts 1.upto(7).to_a.permutation.select { |i| i.join('').to_i.prime? }.max.join('')
