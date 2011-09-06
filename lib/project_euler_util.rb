module ProjectEulerUtil
  require 'mathn'

  def fact(num)
    return 1 if num == 1 || num == 0
    (1..num).to_a.inject(&:*)
  end 

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

  def get_divisors(num)
    return [1] if num == 1
    return [1, num] if num.prime?

    divs = []
    max = num
    (1..num).each do |i|
      break if i >= max
      
      if (num % i).zero?
        max = num / i
        divs << i
        divs << max
      end
    end
    return divs
  end
  
  def num_divisors(num)
    return get_divisors(num).length
  end

  def sum_divisors(num)
    divs = get_divisors(num).sort
    divs.pop
    return divs.inject(&:+)
  end
end
