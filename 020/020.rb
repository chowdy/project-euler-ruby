puts (1..100).inject(&:*).to_s.chars.map { |i| i.to_i }.inject(&:+)
