answer = 0
(1..1000).each { |i| answer += (i ** i) }
puts answer.to_s[answer.to_s.length-10, answer.to_s.length-1]
