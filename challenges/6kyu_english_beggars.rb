# Born a misinterpretation of this kata, your task here is pretty simple: given an array of values and an amount of beggars, you are supposed to return an array with the sum of what each beggar brings home, assuming they all take regular turns, from the first to the last.

# For example: [1,2,3,4,5] for 2 beggars will return a result of [9,6], as the first one takes [1,3,5], the second collects [2,4].

# The same array with 3 beggars would have in turn have produced a better out come for the second beggar: [5,7,3], as they will respectively take [1,4], [2,5] and [3].

# Also note that not all beggars have to take the same amount of "offers", meaning that the length of the array is not necessarily a multiple of n; length can be even shorter, in which case the last beggars will of course take nothing (0).

# Note: in case you don't get why this kata is about English beggars, then you are not familiar on how religiously queues are taken in the kingdom ;)

# Input: an array of integers and an integer representing the beggar
# Ouput: an array with what each beggars sum value is
# Rules: must be in order.
  
# Mental Model:
# intialize a hash for beggars
# iterate over the array with each_slice
# push the current index to the beggars at index
# format and array with the beggars values
  
# Data Structure: hash/each_slice.with_index/push/hash
  
# Algorithm:
# beggars = Hash.new
# each_slice.
# slice.each_with_index
# beggars[index] += num 
# beggars.values
  
def beggars(values, n)
  return [] if n.eql?(0)
  
  beggars = Hash.new(0)
  
  values.each_slice(n) do |slice|
    slice.each_with_index do |num, index|
      beggars[index] += num
    end
  end
  
  extras = n - values.length
  result = beggars.values
  extras.times do 
    result << 0
  end
  
  result
end

p beggars([1,2,3,4,5],6)