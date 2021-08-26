# PROBLEM
# -------------
# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). Your 
# method should work with any integer input.

# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# TEST CASES
# --------------
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# input: integer
# output: string
# rules: should use the minute based format (hh:mm)
#        should work with any integer input 
#		 You may not use ruby's Date and Time classes.

# # Algorithim 
# Initalize local variable HOURS_IN_DAY and assign it with the value 
# of 24 as an integer object.
# Initalize local variable MINUTES_PER_DAY and assign it with the value
# of 60 as an integer object.
# Initalize the variable MINUTES_PER_DAY and assign it the return value
# of HOURS_IN_DAY multiplied by MINUTES_IN_HOUR.
# Define the method time_of_day and intialize tha paramter int.
# Initalize the variable time_remainder and assign it
# the value of the time remaining after the int modulo has been caluculated.
# using MINUTES_PER_DAY.
# E.g 1440 cannot go into 120, therefore 120 is returned as 1440 goes into
# 120 0 times. 
# two local variables are intialized within the method hours and minutes.
# They are assigned the return values of the divmod method when invoked on
# the time_remainder variable.
# hours = 120 / 60 = 2 
# minutes = 0 / 60 = 0
# The format method is then invoked and passes the arguments (hours, minutes)
# to the format_string. In this case 2 and 0. 
# This then returns a string with the arguments formatted correctly
# to represent a digital clock time. 


HOURS_IN_DAY = 24

MINUTES_IN_HOUR = 60

MINUTES_PER_DAY = HOURS_IN_DAY * MINUTES_IN_HOUR

def time_of_day(int)

	time_remainder = int % MINUTES_PER_DAY

	hours, minutes = time_remainder.divmod(MINUTES_IN_HOUR)

	format('%02d:%02d', hours, minutes)

end 

puts time_of_day(120)



#Further exploration:

SECONDS_PER_MIN = 60

def time_and_day(int)

	current_time = Time.new(2020, 3, 8)

	updated_time = current_time + (int * SECONDS_PER_MIN)

	puts updated_time.strftime('%H:%M %A')

end

time_and_day(-4231)
