# PROBLEM
# ---------------
# Write two methods that each take a time of day in 24 hour format,
# and return the number of minutes before and after midnight, 
# respectively. Both methods should return a value in the range 0..1439.

# TEST CASES
# --------------
# after_midnight('00:00') == 0
# after_midnight('12:34') == 754
# after_midnight('24:00') == 0

# before_midnight('00:00') == 0
# before_midnight('12:34') == 686
# before_midnight('24:00') == 0

# input: string in digital format
# rules: cannot use Time and Date methods 
# 	   must return a range between 0..1439
# 	   must return numnber of minutes
# output: integer


def after_midnight(delt_time)
	
	hours_minutes_arr = delt_time.split(':')

	hours_minutes_arr.map! do |num|
		num.to_i
	end

	if hours_minutes_arr[0].to_i <= 23 
		total_mins = (hours_minutes_arr[0] * 60) + hours_minutes_arr[1]
		return total_mins
	else
		return 0
	end

end

p after_midnight('00:00') == 0
p after_midnight('12:34') == 754
p after_midnight('24:00') == 0


# Before Midnight:

def before_midnight(delt_time)

	hours_minutes_arr = delt_time.split(':')

	hours_minutes_arr.map! do |num|
		num.to_i
	end

	if hours_minutes_arr[0].to_i <= 23 
		total_mins = (hours_minutes_arr[0] * 60) + hours_minutes_arr[1]
		if total_mins > 0
			before_midnight = 1440 - total_mins
			return before_midnight
		else
			return 0
		end
	else
		return 0
	end

end

p before_midnight('00:00') == 0
p before_midnight('12:34') == 686
p before_midnight('24:00') == 0