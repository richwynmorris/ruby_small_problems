# Write a method that takes a first name, a space, and a last name 
# passed as a single String argument, and returns a string that 
# contains the last name, a comma, a space, and the first name.

# Examples

# swap_name('Joe Roberts') == 'Roberts, Joe

def swap_name(str)

  names = str.split.reverse

  "#{names[0]}, #{names[1]}"

end

p swap_name('Joe Roberts') == 'Roberts, Joe'