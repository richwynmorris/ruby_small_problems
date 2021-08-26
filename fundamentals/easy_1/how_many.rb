vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


def count_occurrences(list)

	individual_item = list.uniq

	individual_item.each {|item| puts "#{item} => #{list.count(item)}"}

end

count_occurrences(vehicles)