def shout_out_to(name)
 name = name.chars.each { |c| c.upcase! }.join

 puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'


# The reason it does not print the name in captials is because the .chars method creates an array object
# which is different from the original string passsed in as an argument. As a result, when the .upcase!
# method is invoked, it is invoked on the objects in the array and not on the original object. 
# Therefore, when the name variable is called on line 4 it is the original variable passed to the method 
# that is called and that it object is unmutated. 
# To transform the string object, you need to reassign the output of the .each method to a new 
# variable called name so that name now has a new value. You also need to invoked the .join method
# at the end of the block so that array object is transformed back to a string object. 