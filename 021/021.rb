require './lib/project_euler_util.rb'
include ProjectEulerUtil

@memo = {}
def d_of_num(num)
  @memo[num] ||= sum_divisors(num)
  return @memo[num]
end

answer = []
(1...10_000).each do |a|
  print "\r#{a}"
  d_of_a = d_of_num(a)
  (1...10_000).each do |b|
    if (d_of_a == b) &&
       (d_of_num(b) == a) &&
       (a != b)
      answer << a
      answer << b
    end
  end
end
answer.uniq!
puts
puts answer.inject(&:+)

