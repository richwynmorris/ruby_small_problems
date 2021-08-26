string = 'hello'

def a_method(str)

  str << ' world!'

end

a_method(string)

puts string

# On line 1, the variable string is initialized and assigned the string object 
# 'hello' as its value. 

# On lines 3 - 7, a_method is defined with one parameter, str

# On line 9, a_method is invoked and string is passed to it as an arguement.

# On line 5, within the a_method, the << operator takes the string object
# ' world!' and appends it to the object on its left. In this instance it is
# the local variable str which is referencing the variable a's value ('hello'). 

# This would mutate the object permanently. The variable string now has a value of 'hello world!'.
# This is an example of mutating the caller.

# On line 11, the puts method is invoked and the local variable string is passed to
# it as an argument. 

# The method then prints the value, which is the string object 'hello world!', to the 
# console. 

# The method puts returns the value nil.
