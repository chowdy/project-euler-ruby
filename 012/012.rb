require './lib/triangle.rb'
require 'mathn'

include Triangle

def num_divisors(num)
  return 1 if num == 1
  return 2 if num.prime?

  divs = 0
  max = num
  (1..num).each do |i|
    break if i >= max
    
    if (num % i).zero?
      max = num / i
      divs += 2
    end
  end
  return divs
end

answer = 0
triangles.each do |t|
  divs = num_divisors(t)
  print "\r#{divs}"
  if divs > 500
    answer = t
    break
  end
end
puts
puts answer
