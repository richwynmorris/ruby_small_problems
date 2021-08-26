# Write a method which takes a grocery list (array) of fruits with quantities and converts it 
# into an array of the correct number of each fruit.

# Example:

# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

def buy_fruit(nested_array)

  list = []

  nested_array.each do |item, num|
    num.times { list << item }
  end

  list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
   ["apples", "apples", "apples", "orange", "bananas","bananas"]
