def my_method(a, b = 2, c = 3, d)  
  p [a, b, c, d]
end

my_method(4, 5, 6) # a = 4, b = 5, c = 3, d = 6

# As there are more arguments than available parameters, 
# Ruby first assigns the values passed in as arguments to the empty parameters, 
# Ruby goes left to right and first assigns 4 to a and 6 to d.
# as 5 still has yet to be assigned, Ruby goes to the first
# default parameter, in this case b, and reassigns it with 
# the value of 5.
# p is then invoked and returns the values of the objects in an array. 
# answer
#[4,5,3,6]
