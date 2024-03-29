a_max = 333

def is_pythagorean_triplet?(a,b,c)
  return true if (a * a) + (b * b) == (c * c)
  return false
end

(1..a_max).each do |a|
  ((a+1)..((1000-a)/2.0).floor).each do |b|
    ((b+1)..(1000-(a+b))).each do |c|
      if (a + b + c) == 1_000 && is_pythagorean_triplet?(a,b,c)
          puts a * b * c
          exit
      end
    end
  end
end
