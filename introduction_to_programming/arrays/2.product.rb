# 1

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
#the line above is the same as writing arr[0].delete(arr[0][1])

# 2

arr = ["b", "a"]
arr = arr.product([Array(4..6)])
