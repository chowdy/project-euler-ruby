def get_last_10_digits(num)
  str = num.to_s
  return num if str.length <= 10

  len = str.length
  return str[len-10,len-1].to_i
end

last_ten = 1
7830457.times do
  last_ten *= 2
  last_ten = get_last_10_digits(last_ten)
end
puts get_last_10_digits((last_ten * 28433) + 1)
