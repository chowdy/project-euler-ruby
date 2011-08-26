require 'mathn'

primes = Prime.instance.to_enum
answer = 0
10_001.times { answer = primes.next }
puts answer
