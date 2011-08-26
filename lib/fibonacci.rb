module Fibonacci

  def fib(max)
    fibs = [1, 1, 2]

    i_2, i_1 = 1, 2

    while (i_2 + i_1) < max
      i = i_2 + i_1
      fibs << i
      i_2 = i_1
      i_1 = i
    end

    return fibs
  end

end
