answer = []
[1,2,3,4,5,6,7,8,9].permutation do |pandigits|
  eqns = []

  eqn_buf = eqn.clone
  eqns << eqn_buf.insert(2,'*').insert(-5,'==')
  eqn_buf = eqn.clone
  eqns << eqn_buf.insert(1,'*').insert(-4,'==')
  eqn_buf = eqn.clone
  eqns << eqn_buf.insert(1,'*').insert(-5,'==')

  
  eqns.each do |eqn|

    print "\r#{eqn}"

    begin
      if eval(eqn)
        answer << eqn[/\=([0-9]+)\z/,1].to_i
      end
    rescue SyntaxError
      next
    end
  end
end
puts answer.uniq.inject(&:+)
