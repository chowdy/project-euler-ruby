answer = 0
(3...1000).each { |i| answer += i if (i % 3).zero? || (i % 5).zero? }
puts answer
