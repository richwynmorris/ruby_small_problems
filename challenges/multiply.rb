1) The code does not execute properly. Try to figure out why.

```ruby
def multiply(a b)
  a * b
end
```

# The code does not execute as the parameters in the method definition are not seperated by a comma. 

# The comma allows multiple arguements to be passed to the method when it is invoked. As this only 
# has one, the method cannot differentiate between the two arguments being passed to it and see's 
# it only as one arguement.

# Therefore, when the block is executed, the method is unable to retrieve the values associated 
# with the arguments passed to it. 