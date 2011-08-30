require './lib/project_euler_util.rb'

include ProjectEulerUtil

(fibs = fib(("9"*1000).to_i)).each_index do |idx|
  if fibs[idx].to_s.length >= 1000
    puts idx + 1
    exit
  end
end
