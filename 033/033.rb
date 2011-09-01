@num, @den = 1, 1
(11..99).each do |num|
  next if (num % 10).zero?
  (11..99).each do |den|
    next if num >= den
    value = num / den.to_f
    snum, sden = num.to_s, den.to_s

    if value == (snum[1].to_f / sden.gsub(snum[0], '').to_f) ||
       value == (snum[0].to_f / sden.gsub(snum[1], '').to_f)
      @num *= num
      @den *= den
      next
    end
  end
end

gcd = @num.gcd(@den)
puts @den / gcd
