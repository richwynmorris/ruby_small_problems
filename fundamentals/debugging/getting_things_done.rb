def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']


# The error is a result of recursion as the method move has been invoked within the method, 
# meaning the method continues to invoke itself continuously. Ruby breaks the loop once it reaches
# its maximum stack level depth. When invoking recursion, it important to include a a way to break 
# out of the loop. 

# With break method:

def move(n, from_array, to_array)
  return if n == 0	
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end