# PROBLEM:
# Write a method which takes a grocery list (array) of fruits with quantities 
# and converts it into an array of the correct number of each fruit.

# INPUT: Nested array
# RULES: Must return one arr
# OUTPUT: Arr

# QUESTIONS?:
# return new array or original array ?

# PSEUDOCODE:
# define a method called buy_fruit with one parameter nested_arr
# invoke the .map method to iterate through each arr and pass the items
# of each arr to the block, the set being assigned to the paramenter fruit,
# the second the parameter num. 
# within the block have the fruit argument inseted within and arr and * this
# by the value attached to the num parameter. 
# invoke the .flatten method to revome the nested array so the arr is all on 
# the same level of abstraction. 

def buy_fruit(nested_arr)

	nested_arr.map {|fruit, num| [fruit] * num }.flatten!

end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

