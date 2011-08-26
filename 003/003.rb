require 'mathn'

input = 600_851_475_143
answer = 0

Prime.instance.each do |i|
  break if i > input

  div = input / i
  next if div > div.floor

  input /= i
  answer = i
end

puts answer
