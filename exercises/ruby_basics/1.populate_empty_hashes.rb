p contact_data = %W(fava passera)
contacts = {
  "john" => {},
  "sarah" => {}
}


contacts["john"][:dick] = contact_data[0][0] + '...' + contact_data [0][1...35]
contacts["sarah"][:pussy] = contact_data[1]

puts contacts
