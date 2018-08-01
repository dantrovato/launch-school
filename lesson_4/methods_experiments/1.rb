
hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh[:carrot] = 'vegetable'
hsh[:pear] = 'Fruit'
hsh[:broccoli] = 'vegetable'

p hsh

hsh.each { |k,v| v = 'Food'}

p hsh
