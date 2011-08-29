@ones = %w{one two three four five six seven eight nine}
@tens = %w{twenty thirty forty fifty sixty seventy eighty ninety}
@teens = %w{ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}

def x01_to_x99(x = '')
  sum_length = 0

  # x1 to x9
  @ones.each { |one| sum_length += (x + one).length }

  # x10 to x19
  @teens.each { |teen| sum_length += (x + teen).length }

  # x20 to x99
  @tens.each do |ten|
    sum_length += (x + ten).length
    @ones.each do |one|
      sum_length += (x + ten + one).length
    end
  end
  
  return sum_length
end

answer = 0

# 01 to 099
answer += x01_to_x99()

# 1xx to 9xx
@ones.each do |one|
  answer += "#{one}hundred".length
  answer += x01_to_x99("#{one}hundredand")
end

# 1000
answer += "onethousand".length
puts answer
