flintstones = {
  "Fred" => 0,
  "Wilma" => 1,
  "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5
}
p flintstones.assoc("Barney")
p flintstones.has_key?("Freddy")
p flintstones.fetch("Betty")
p flintstones.select { |k,v| k == "Fred" || v == 1 || v == 3}
p flintstones.select { |k,v| k.start_with?("W")}
p flintstones.keys
p flintstones.delete_if { |k,v| k.start_with?("F")}
p flintstones

puts("Contact Data Hash")
puts

# populate contacts with contact data
contact_data = ['Trovato', 'Di Landa']

contacts = {
  Dan: {},
  'Cesi' => {}
}

contacts[:Dan]['Daniele'] = contact_data[0]
contacts['Cesi']['Cesidio'] = contact_data[1]

p contacts
