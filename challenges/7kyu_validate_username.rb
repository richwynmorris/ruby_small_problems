# Write a simple regex to validate a username. Allowed characters are:

#     lowercase letters,
#     numbers,
#     underscore

# Length should be between 4 and 16 characters (both included).

# Input: username, string sentence.
# Output: either true or false based on the whether the password is valid.

# Mental Model:
# - check the length, if it doesn't meet criteria, return false.
# - break the string up into characters and iterate through them
# - if the character matches the regex expression, keeo condition true.


# Algorithm:
# - intialise the local variable valid_username with false
# - check the length of the characters, return false if it does not meet it.
# - break the string up in to characters
# - iterate through the characters using each
# - if the character matches? true:
# - else false - valid_username = false
# return valid username condition.

def validate_usr(username)
  return false if username.length < 4 || username.length > 16
  valid_username = false
  
  username.chars.each do |char|
    if !char.match?(/[a-z]|[0-9]|_/)
      valid_username = false
      break
    else 
      valid_username = true
    end
  end
  valid_username
end

p validate_usr('asd43 34')