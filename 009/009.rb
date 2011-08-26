answer = 0
a_max = 333

def is_pythagorean_triplet?(a,b,c)
  return false if (a >= b) || (b >= c) || (a >= c)
  return true if (a * a) + (b * b) == (c * c)
  return false
end

(1..a_max).each do |a|
  ((a+1)..((1000-a)/2.0).floor).each do |b|
    ((b+1)..(1000-(a+b))).each do |c|
      if is_pythagorean_triplet?(a,b,c)
        if (a + b + c) == 1000
          answer = a * b * c
          puts "#{a}, #{b}, #{c}"
          puts answer
          exit
        end
      end
    end
  end
end

