require 'mathn'

primes = Prime.instance
answer = 0
primes.each do |p|
  break if p > 2_000_000
  answer += p
end
puts answer 
