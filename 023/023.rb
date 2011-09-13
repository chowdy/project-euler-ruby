require './lib/project_euler_util.rb'
include ProjectEulerUtil

# By mathematical analysis, it can be shown that all integers greater than
# 28123 can be written as the sum of two abundant numbers.
@abundants = []
MAX = 28_123

# Git dem abundant numbers
2.upto(MAX).each do |i|
  @abundants << i if sum_divisors(i) > i
end
@sums = []
@abundants.combination(2) do |i|
  print "\r#{i.inspect}"
  @sums << i[0] + i[1]
end

exit
mid_a = (@abundants.length/2.0).floor
mid_b = (@abundants.length/2.0).ceil
answer = 0
1.upto(MAX).each do |i|
  print "\r#{i}"

  escape = :unsure

  @abundants[0..mid_a.floor].each do |a|
    if (a + a) == i
      escape = :can_be
      break
    end

    @abundants[mid_b..@abundants.length - 1].each do |b|
      if (a + b) == i || (b + b) == i
        escape = :can_be
        break
      end

      if (a + b) > i
        #escape = :cannot_be
        break
      end

    end

    if escape != :unsure
      break
    end
  end

  answer += i if (escape == :cannot_be || escape == :unsure)
end
puts answer
