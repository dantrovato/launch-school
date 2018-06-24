# Write a method that counts the number of occurrences of each element in a given array.
#
# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
#
# count_occurrences(vehicles)
# Once counted, print each element alongside the number of occurrences.
#
# Expected output:
#
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(arr)
  unique_items = arr.uniq # => ["car", "truck", "SUV", "motorcycle"]

  unique_items.each do |element|
    i = 0
    arr.each do |x|
      if x == element
        i += 1
      end
    end
    puts "#{element} => #{i}"
  end
end

count_occurrences(vehicles)
