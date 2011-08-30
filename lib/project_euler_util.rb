module ProjectEulerUtil

  def triangles
    Enumerator.new do |yielder|
      idx, value = 1, 1
      while
        yielder << value
        idx += 1
        value += idx
      end
    end
  end

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

  def num_divisors(num)
    return 1 if num == 1
    return 2 if num.prime?

    divs = 0
    max = num
    (1..num).each do |i|
      break if i >= max
      
      if (num % i).zero?
        max = num / i
        divs += 2
      end
    end
    return divs
  end
end
