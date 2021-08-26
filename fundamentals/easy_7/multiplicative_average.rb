Solution:
def show_multiplicative_average(arr)

	multiple = arr.inject(:*)

	average = multiple.to_f / arr.length.to_f

	puts "The result is #{'%.3f' % average}" 

end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])

# further exploration:
# def show_multiplicative_average(numbers)
#   product = 1
#   numbers.each { |number| product *= number }
#   average = product / numbers.size
#   puts "The result is #{format('%.3f', average)}"
# end

# show_multiplicative_average([3, 5])
# "The result is 7.000"

# The above code rounds the value to 7 as the intial product variable sets a integer as its
# value as opposed to a floating point value. This means the integer the final value assigned 
# to average is round to it's integer value, 7.  