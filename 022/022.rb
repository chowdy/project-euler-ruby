def alpha_val(c)
  return c.downcase.ord - 96
end

names = ""
File.open('./022/names.txt').each do |line|
  names += line
end
names = eval "[" + names + "]"

answer = 0
names.sort!.each_index do |i|
  sum = 0
  names[i].split(//).each do |c|
    sum += alpha_val(c)
  end
  answer += (sum * (i + 1))
end
puts answer
