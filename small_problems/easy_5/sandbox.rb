
FAVE = %w[simo cesi toni dani]
NUM = [0, 1, 2, 3]

p NUM.sort_by { |num| FAVE[num]}


# step 1: num will be 4. so arr[0] will be bound to andrea
# step 2: arr[1] will be bound to toni and arr[2] to ben
# step 3: you get this 4 == andrea, 2 == toni, 3 == ben
# step 4: you sort_by the names so you get andrea, ben and toni
# step 5: result == [4, 3, 2]
