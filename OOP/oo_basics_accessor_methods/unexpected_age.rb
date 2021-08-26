# Modify the following code to accept a string containing a first and last name. 
# The name should be split into two instance variables in the setter method, then joined in the getter method to form a full name.

class Person

  def name=(names_input)
    @names = names_input.split
    first_name = @names.first
    last_name = @names.last
  end

  def name
    @names.join(' ')
  end

end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name

# Expected output:

# John Doe