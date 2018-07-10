require 'pry'

def car(new_car)
  mak = make(new_car)
  mode = model(new_car)
  [mak, mode]
end

def make(new_car)
  new_car.split(" ")[1]
end

def model(new_car)
  new_car#.split(" ")[1]
end

make, model = car("Ford Mustang")
#make = car("Ford Mustang")
#model = car("Ford Mustang")
binding.pry
make == "Ford"         # => true

p model.start_with?("M")

#
# def metodo(arg)
#   [1,2,3,4,5]
# end
#
# uno, due, tre, quattro = metodo('')
# puts uno
# puts due
# puts tre
# puts quattro
