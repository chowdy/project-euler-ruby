require './lib/project_euler_util.rb'
require 'mathn'

include ProjectEulerUtil

answer = 0
triangles.each do |t|
  divs = num_divisors(t)
  if divs > 500
    answer = t
    break
  end
end
puts answer
