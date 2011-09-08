require './lib/project_euler_util.rb'
include ProjectEulerUtil

puts fib(4_000_000).select { |i| i.even? }.inject(&:+)
