=begin

Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences.

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2


=end

def count_occurrences(array)

  hash = {'car' => 0, 'truck' => 0, 'SUV' => 0, 'motorcycle' => 0}

  array.each do |vehicle|
    hash[vehicle] += 1 if hash.include?(vehicle)
  end

  puts hash

end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
