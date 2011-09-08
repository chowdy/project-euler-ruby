require 'mathn'

# Manually pared this array down until an answer was produced.
# Could do this programmatically, but meh.
puts 1.upto(7).to_a.permutation.select { |i| i.join('').to_i.prime? }.max.join('')
