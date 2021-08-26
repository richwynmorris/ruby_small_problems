def fibonacci(nth)
	if nth < 2
		nth
	else
		nth = fibonacci(nth -1) + fibonacci(nth - 2)
	end
end

p fibonacci(3)


# Talking through recurssive methods:
# A recursive method calls upon itself at least once when performed. It will use a conditional statement
# to break the recursion. In the case above this is when the nth is less than 2. Moreover, a recursive method
# will use the result returned by themselves to continue the recurrsion process. 

# When fibonacci is invoked, the integer, that is passed in as an argument, is not less than 2. As a result, 
# the if statemenet is not executed and the arguement is passed the else statement. 

# The else statement reassigns the value of the variable nth as the result of fibonacci(nth -1) added with 
# fibonacci(nth - 2). Let's look at how the first fibonacci statement in the else statement works:

# Level 1
# fibonacci(nth -1) == fibonacci(2) 
# nth == 2 

# nth is then reassigned as 2. As the fibonacci method now has an arguement of two. The else statement in 
# the fibonacci method is invoked again and nth is again reassigned  within the method.

# Level 2
# fibonacci(nth -1) + fibonacci(nth - 2) == fibonacci(1) + fibonacci(0)
# nth == 1 

# As the results of the fibonacci method are now below the conditional statement, the if statement is invoked.

# Level 3:

# fibonacci(1)
# if 1 < 2
#    return 1 

# fibonaaci(0)
# if 0 < 2
#    return 0

# This result is then returned to the level 2 method and that result is then passed to the level 3 method call
# it is important to note that at each level it simulaneously adds the second returned fibonacci number to the first.

# Lets look at the second fibonacci invocation on level 2:

# Level 12
# fibonacci(nth - 2) == fibonacci(1)

# The second fibonacci method is invoked with the integer one. This is below if statement conditional and as a result 
# 1 is returned and the fibonacci method is not invoked again.

# Lets take a a look at what happens on both sides. 

# Level 1                    -----------------------------fibonacci(3)------------------------------
#                   		(3 - 1)														 		(3 - 2)
#                    		   |																	|
#                    		   |																	|
#                    		   |																	|
#                    		   |																	|
# Level 2          nth(2) = fibonacci(1)                      +                          nth(1) = finbonacci(1)
#                            |																	|
#                            |																	|
#                            |																	|
#                            |																	|
# Level 3       nth(1) = finbonacci(1)       +       fibonacci(0)							  1 is returned
#              		    |                           |
#              		    |                           |
#              		    |							|
#              		    |							|
#                  1 is returned				  0 is returned


# As a result, the method after recursion returns the integer 2.  


