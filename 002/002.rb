require './lib/project_euler_util.rb'

include ProjectEulerUtil

answer = 0
(fib(4_000_000).select { |i| (i % 2).zero? }).each { |i| answer += i }
puts answer
