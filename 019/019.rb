require 'date'

current = Date.ordinal(1901,1)
ending = Date.ordinal(2000,365)

answer = 0
while current < ending
  answer += 1 if current.sunday?
  current = current.next_month
end
puts answer
