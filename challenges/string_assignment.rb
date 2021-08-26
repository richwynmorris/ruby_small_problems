# Take a look at the following code:

# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name

# What does this code print out? Think about it for a moment before continuing.

# If you said that code printed

# Alice
# Bob

# you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# What does this print out? Can you explain these results?

# Both variables reference the same object so when name is mutated using the bang suffix,
# save_name continues to point to the mutated object. 

# The puts method will return: 
# BOB
# BOB