module Triangle
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
end
