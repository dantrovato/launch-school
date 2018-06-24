def down_to_zero(num)
  if num <= 0
    puts "whoa. you stop there, gangster"
  else
    puts num
    down_to_zero(num-1)

  end
end
puts down_to_zero(9)
