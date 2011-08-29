require 'mathn'

answer = 0
Prime.instance.each do |p|
  break if p > 1_000_000

  p_str = p.to_s
  p_buf = p_str.clone.split(//).rotate.join('')

  while true
    break if not p_buf.to_i.prime?
    
    if p_str == p_buf
      answer += 1
      break
    end 

    p_buf = p_buf.split(//).rotate.join('')
  end
end
puts answer
