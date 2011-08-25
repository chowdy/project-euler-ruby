require './lib/fibonacci.rb'

include Fibonacci

answer = 0
(fib(4_000_000).select { |i| (i % 2).zero? }).each { |i| answer += i }
puts answer
