=begin
module Towable
  puts "Truck can tow"
end

class Vehicle
  attr_accessor :color, :model
  attr_reader :year

  @@vehicles_created = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@vehicles_created += 1
  end

  def self.vehicles_created
    "#{@@vehicles_created} vehicles created"
  end

  def self.calculate_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def to_s
    puts "Your car is a #{color} 500 from #{year}"
  end

  def current_speed
    puts "Your speed is #{@current_speed}"
  end

  def speed_up(number)
    @current_speed += number
    puts "You speed up by #{number} and you're now doing #{@current_speed}"
  end

  def brake(number)
    @current_speed -= number
    puts "You brake by #{number} and you're now doing #{@current_speed}"
  end

  def shut_off
    @current_speed = 0
    puts "You are now parking. Your speed is #{@current_speed}"
  end

  def spray_paint(color)
    self.color = color
    "You paint your car #{color}"
  end

  def age
    puts "Your vehicle is #{calculate_age} years old"
  end

  private

  def calculate_age
    time = Time.now
    time.year - year
  end
end

class MyCar < Vehicle
  NUMBER_DOORS = 5
end

class MyTruck < Vehicle
  HAS_FRIDGE = 'yes'
  include Towable
end

cinquina = MyCar.new(1900, 'red', 500)
p cinquina.spray_paint('mauve')
p cinquina.age
=end

class Student


  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade

  end

end

joe = Student.new('joe', 8)
bob = Student.new('bob', 7)
puts "well done" if joe.better_grade_than(bob)
puts "naaa" if !!joe.better_grade_than(bob)





#
