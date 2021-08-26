# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. If the number of 
# minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the 
# time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

def time_of_day(time)

	hour = time / 60  
	minutes = time % 60

	if hour > 24
		loop do
			break if hour < 24 
			hour -= 24
		end
	elsif hour < 0
		loop do
			break if hour >= 0
			hour += 24
		end
	end

  hour = '0' + hour.to_s if hour < 10
	minutes = '0' + minutes.to_s if minutes < 10

	"#{hour}:#{minutes}"

end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"