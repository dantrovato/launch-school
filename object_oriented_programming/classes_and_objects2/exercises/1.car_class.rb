class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal

  attr_accessor :color
  def initialize(color, name)
    @name = name#super(name)
    @color = color
  end
end

bruno = GoodDog.new('brown', 'fava')
puts bruno.name
puts bruno.color


=begin
class MyCar

  attr_accessor :color
  attr_reader :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(number)
    @speed += number
    puts "speed up by #{number}"
    puts "total speed #{@speed}"
  end

  def brake(number)
    if @speed >= number
      @speed -= number
      puts "speed up by #{number}"
      puts "your speed is #{@speed}"
    else
      puts "car ain't even moving!"
    end

  end

  def turn_off
    @speed = 0
    puts "engine is off"
  end

  def current_speed
    puts "current speed #{@speed}"
  end

  def spray_paint(color)
    self.color = color
    puts "your car has been painted #{self.color}"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon o' gas"
  end

  def to_s
    "my car is a #{color} #{model} from #{year}"
  end

end
my_car = MyCar.new(1999, "gray", "merc")
MyCar.gas_mileage(13, 351)
puts my_car
=end

=begin
lumina = MyCar.new(1976, 'white', 'chevy')
lumina.speed_up(90)
lumina.brake(10)
lumina.current_speed
puts lumina.color
lumina.color = 'black'
puts lumina.color
lumina.spray_paint('green')
puts lumina.color
=end
