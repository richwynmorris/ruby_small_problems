s = 'abc'
puts s.public_methods(all=false).inspect

# To return the methods that are available to the string class
# the parameter all must be set to false so only the methods available
# to the reciever are present.  