require 'mathn'

CONSECUTIVE_COUNT = 4
START = 300
buf = []
answer = []
count = START
loop {
  is_unique = true

  prime_factors = count.prime_division
  is_unique = false if prime_factors.length != CONSECUTIVE_COUNT

  prime_factors.each do |p|
    break if not is_unique

    factor = p[0] * p[1]

    if buf.include? factor
      is_unique = false
      break
    end

    buf << factor
  end

  if is_unique
    answer << count
    
    if answer.length == CONSECUTIVE_COUNT
      break
    end
  else
    buf = []
    answer = []
  end

  count += 1
}
puts answer.first
