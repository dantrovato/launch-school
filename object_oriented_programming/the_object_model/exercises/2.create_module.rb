module Greet
  def say_hi
    puts "hello"
  end
end

class Dog
  include Greet
end

pearl = Dog.new

pearl.say_hi
