puts (2**1000).to_s.chars.map { |i| i.to_i }.inject(&:+)
