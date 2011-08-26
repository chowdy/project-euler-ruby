puts ((1..100).inject(1) { |fact,i| fact * i }).to_s.split(//).inject { |sum,i| sum.to_i + i.to_i }
