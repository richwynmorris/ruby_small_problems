password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  set_password(password)
end

verify_password(password)

# The problem here is that the password (in the outerscope) is not being mutated when 
# being reassigned with the new_password in set_password. 

# The solution to this would be to either make a password a global variable so each
# method has access to the variable and can mutate it:

# $password = nil

# The other option is to pass in the variable to the method verify as an argument.
# However, by reassigning the password variable in the set_password method with 
# new password. The password contained within the method is a new variable and 
# as a result, the password in the outerscope remains unmodified.

# The program will run, however it will deny the user authentication as nil != password.