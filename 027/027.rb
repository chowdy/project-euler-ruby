require 'mathn'

def do_work(a,b)
  n = 0
  loop {
    if (n*n + a*n + b).prime?
      n += 1
    else
      return n
    end
  }
end

max = 0
max_a, max_b = 0, 0
(-1_000...1_000).each do |a|
  (-1_100...1_000).each do |b|
    work_done = do_work(a,b)
    if ( work_done > max)
      max = work_done
      max_a, max_b = a, b
    end
  end
end
puts max_a * max_b
