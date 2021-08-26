# You are given an array of integers. Your task is to sort odd numbers within the array in ascending order, and even numbers in descending order.

# Note that zero is an even number. If you have an empty array, you need to return it.

# For example:

# [5, 3, 2, 8, 1, 4]  -->  [1, 3, 8, 4, 5, 2]

# odd numbers ascending:   [1, 3,       5   ]
# even numbers descending: [      8, 4,    2]

def sort_array(arr)
  
  odds = arr.select { |num| num. odd? }.sort
  evens = arr.select{ |num| num.even? }.sort.reverse
  
  arr.map! do |num|
    if num.odd?
      odds.shift
    else
      evens.shift
    end
  end
  
end

p sort_array([5, 3, 2, 8, 1, 4])