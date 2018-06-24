# Look at Ruby's merge method. Notice that it has two versions. What is the
# difference between merge and merge!? Write a program that uses both and
# illustrate the differences.

person = {
  name: "strunz",
  age: 890
}

more_info = {
  is_ninja?: true,
  birth_defects: "wonky eye"
}

person.merge!(more_info)
