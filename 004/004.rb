answer = 0

(100..999).each do |i|
  (100..999).each do |j|
    product_str = (i*j).to_s
    if (product_str == product_str.reverse)
      answer = product_str.to_i if product_str.to_i > answer
    end
  end
end

puts answer
