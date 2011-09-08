MAX = 20
i = MAX
while true

  (1..MAX).each do |j|
    break if not (i % j).zero?
    
    if j == MAX
      puts i
      exit
    end
  end

  i += MAX
end
