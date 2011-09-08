require 'mathn'
puts Prime.instance.take_while { |i| i < 2_000_000 }.inject(&:+)
