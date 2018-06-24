def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      puts "oi"
      return

    end
  end
  puts 'hi'
end

p count_sheep
puts "fava"
