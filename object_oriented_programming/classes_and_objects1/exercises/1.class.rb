class MyCar

  attr_accessor :color, :model
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(accelleration)
    puts "your speed is going up by #{accelleration}"
    @current_speed += accelleration
    @current_speed
  end

  def brake(decelleration)
    puts "you're braking by #{decelleration}"
    @current_speed -= decelleration
    @current_speed
  end

  def turn_off
    puts "car is off"
    @current_speed = 0
  end

  def spray_paint(color)
    self.color = color
    puts "paint changed to #{color}"
  end

  def to_s
    "this is the new message for the #{color} #{model}"
  end
end


lucille = MyCar.new(1976, "red", 127)
lucille.spray_paint('green')
puts lucille




=begin

class MyCar

  attr_accessor :color
  attr_reader :year

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

end

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
