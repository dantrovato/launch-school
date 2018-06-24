module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year, :model
  @@number_of_vehicles = 0

  def initialize(year, color)
    @@number_of_vehicles += 1
    @year = year
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    puts "Let's park this bad boy!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def spray_paint(color)
    self.color = color
    puts "You new #{color} paint job looks great!"
  end

  def self.number_of_vehicles
    puts "#{@@number_of_vehicles} have so far been created"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"

  end

  def age
    calculate_age
  end

  private
  def calculate_age
    Time.now.year - self.year #my solush was Time.now.year - year
  end
end

class MyCar < Vehicle
    DOORS = 4
end

class MyTruck < Vehicle
  include Towable
  DOORS = 2
end

brivido = MyTruck.new(2006, 'green')
puts brivido.can_tow?(1999)

puts Vehicle.number_of_vehicles

puts MyTruck.ancestors
puts brivido.age
# puts Time.now.year
