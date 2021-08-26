5.step(to: 10, by: 3) { |value| puts value }

# .step, when invoked takes two arguments - to: and by:. to: is the limit
# and will break the looping increments if exceeded. by: dictates what the 
# increment will be , starting at the given object, in this case 5. Each
# value that is returned by the method and passed to the block. Its is then
# assigned to parameter of 'value'. The block then prints each value passed 
# to it.

# Result 
# => 5, 8