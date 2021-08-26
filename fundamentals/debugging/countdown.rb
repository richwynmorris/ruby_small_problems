counter = 10

10.times do
  puts counter
  counter -= 1
end

puts 'LAUNCH!'

# The reason the method continued to print 10 was a result of the variable counter being 
# intialized outside of the decrease method. As a result, when the method is invoked, it performs it operation 
# on the counter value passed in as an arguement and does not affect the counter in the outer scope.
# I have removed the method and placed the -= 1 in the loop which allows the counter to subtract 1 on each iteration.