# The #bsearch method, when invoked on an ordered array, compares the parameter assgined in the block
# to the value in the block. The #bsearch method wiill then assign the middle value of the array 
# as an arguement to the block and compare it to the value. If the arguemnt is greater than the value
# bsearch will iterate through the lower half of the array and apply the same process, if it is lower, 
# bsearch will iterate through the upper section of the array, and apply the same process. Therefore, 
# each argument passed to the block will either evaluate to -1, 0 or 1. -1 equates to lower, 0 equal to 
# (or element found) and 1 equates to upper. If the element is not contained within the array, the method 
# returns nil.

a = [1, 4, 8, 11, 15, 19]

p a.bsearch { |x| x > 8 }

# => 11 
