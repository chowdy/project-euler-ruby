require './lib/project_euler_util.rb'
include ProjectEulerUtil

@memo = {}
def memo_fact(num)
  @memo[num] ||= fact(num)
  return @memo[num]
end

answer = 0
3.upto(99_999).each do |i|
  if (i.to_s.chars.map { |c| c.to_i }.inject(0) { |m,i| m += memo_fact(i) } == i)
    answer += i 
  end
end
puts answer
