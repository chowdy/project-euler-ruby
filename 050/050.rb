require 'mathn'

# Memoize cos I just don't give a fuck.
@derp = {}
def summ(ary, start, length)
  @derp["#{start}_#{length}".to_sym] ||=
    ary[start,length].inject(0) { |sum,i| sum += i }
end

MAX = 1_000
primes_lt_max = []
answer = 0
cur_max = 0

primes = []
Prime.instance.each do |p|
  break if p >= MAX
  primes << p
end

primes.each do |p|
  print "\r#{p}"

  (1..(primes.length)).each do |length|
    (0..(primes.length - length)).each do |start|
      if (sum = summ(primes, start, length)) == p
        if length > cur_max 
          cur_max = length
          answer = p
        end
      elsif sum > p
        # No point in trying
        break;
      end
    end
  end
end

puts "\n#{answer}"
