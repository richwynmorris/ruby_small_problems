a = 5

def fix(number)
	number = 7
end

fix(a)
p a

# On line 1, the variable a is initalised with the value of the integer 5.

# The method fix is defined on lines 3 - 5 with the parameter, number.

# On line 7, fix is invoked and the variable a is passed to it as an arguement.

# On line 5, the local variable number , within the scope of the method fix, is assigned the value of integer 7. 
# However, this does not mutate a in the outerscope, as the outerscope does not have access to the innerscope of 
# the method. As a result, a still references the value 5. 

# On line 8, the p method is invoked and a is passed to it as an arguement. 
#The value of a is returned. a's value is the integer 5.