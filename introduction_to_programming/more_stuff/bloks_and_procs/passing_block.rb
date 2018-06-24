=begin

def take_block(number, &block)
  block.call(number)
end

num = 42

take_block(num) do |n|
  puts "Block being called in the method! #{n}"
end
=end

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |n|
    proc.call n
  end
end

proc = Proc.new do |num|
  puts "#{num}. Proc being called in the method!"
end

take_proc(proc)
