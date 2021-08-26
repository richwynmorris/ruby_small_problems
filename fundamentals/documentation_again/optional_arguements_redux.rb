require 'date'

puts Date.new                 # returns a negative date = -4712-01-01
puts Date.new(2016)           # returns 2016-01-01
puts Date.new(2016, 5)        # returns 2016-05-01
puts Date.new(2016, 5, 13)    # returns 2016-05-13

# The arguments that can be passed to the method are in order of year,
# month and day. If an argument is not passed, date returns a default negative parameter (4721-01-01).
# If only a year is passed to the method, the date and month are set to the first day of 
# the first month. If the year and month are passed, the day sets itself to the first of that month.