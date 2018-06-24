person = {
  name: 'bob',
  height: '6 ft',
  weight: '160 lbs',
  hair: 'brown'
}

person.each do |k, v|
  puts "Bob's #{k} is #{v}"
end

puts person[:hai]
puts person.fetch(:hai)
