a = %w(a b c d e)
puts a.fetch(7)									
# => Error Message
puts a.fetch(7, 'beats me')	
# => 'beats me'
puts a.fetch(7) { |index| index**2 }			
# => 49

# .fetch returns the value at the index passed as an arguement. if the
# index value lies outside of the array boundries, prints an error message, 
# returns nil.
# a second arguement can be supplied and will act as a default value, if 
# there is no valid index. In this case it prints 'beats me' and returns nil.
# If a block is given, it will only execute if an invalid argument is referenced. 
# In the case above, 7 is not valid so it is passed to the parameter 
# 'index' and the block squares the value. Prints the result, '49'

