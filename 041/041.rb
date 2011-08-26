require 'mathn'

# Manually pared this array down until an answer was produced.
# Could do this programmatically, but meh.
answer = [1, 2, 3, 4, 5, 6, 7].permutation.to_a.select do |i|
  number = i.join('').to_i.prime? end
puts answer.max.join('')
