arr = [1, 2, 3, 4, 5]

arr.each { |x| puts x if x.odd? }
# ==============

hash = {fava: 'dan', favone: 'ceski'}

john =  hash.each { |k, v| puts v}
p john
# ==============
