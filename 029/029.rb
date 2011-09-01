answer = []
(2..100).each do |a|
  (2..100).each do |b|
    answer << a ** b
  end
end
puts answer.uniq.length
