def greeting(name, options = {})

  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and i live in #{options[:city]}."
  end
end

greeting("Strunz")
greeting("Bob", age: 62, city: "New York City")
greeting("Dan", {age: 28, city: 'laaaandon', fava: 10})
