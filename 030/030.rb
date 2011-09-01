# Chose 999_999 as the max because 9^5 * _6_ is 6 digits.
answer = 0
(2..999_999).each do |i|
  answer += i if i == i.to_s.split(//).inject(0) { |m,i| m += i.to_i ** 5 }
end
puts answer
