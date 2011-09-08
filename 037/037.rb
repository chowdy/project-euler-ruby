require 'mathn'

def trunc_left(num)
  1.upto(num.to_s.length-1).each do |i|
    return false if not num.to_s[i..num.to_s.length].to_i.prime?
  end

  return true
end

def trunc_right(num)
  0.upto(num.to_s.length-2).each do |i|
    return false if not num.to_s[0..i].to_i.prime?
  end

  return true
end

truncable = []
Prime.instance.each do |p|
  break if truncable.length == 11 + 4 # (2,3,5,7)
  truncable << p if trunc_left(p) && trunc_right(p)
end

puts truncable.inject(&:+) - (2 + 3 + 5 + 7)
