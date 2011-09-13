require 'mathn'

answer = 0
Prime.take_while { |i| i < 1_000_000 }.each do |p|
  p_str = p.to_s
  p_buf = p_str.clone

  next if p > 10 && p_str[/[246805]/]

  while p_buf.to_i.prime?
    p_buf = p_buf.split(//).rotate.join('')
    
    if p_str == p_buf
      answer += 1
      break
    end 

  end
end
puts answer
