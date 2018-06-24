num = 0

loop do
  num += 2
  if num == 4
    next
  end
  puts num
  if num == 10
    break
  end
end
