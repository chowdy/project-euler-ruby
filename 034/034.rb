# Pre-populate list of first 10 factorials.
@facts = [1] + (1..9).to_a.map { |i| (1..i).inject(&:*) }

puts 3.upto(99_999).select { |i|
  i == i.to_s.chars.map(&:to_i).inject(0) { |m,i| m += @facts[i] }
}.inject(&:+)
