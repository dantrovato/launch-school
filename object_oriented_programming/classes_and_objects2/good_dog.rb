class GoodDog

  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def speak
    "#{:name} says Arf!"
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def self.fava
    puts "you are fava"
  end

end

sparky = GoodDog.new("Sparky", '12 inches', '10 lbs')
#fido = GoodDog.new("Fido")
sparky.change_info('fava', "8km", '100tons')
puts sparky.info
GoodDog.fava
