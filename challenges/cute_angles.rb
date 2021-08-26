# Write a method that takes a floating point number that represents an angle between
#  0 and 360 degrees and returns a String that represents that angle in degrees, 
#  minutes and seconds. You should use a degree symbol (°) to represent degrees, 
#  a single quote (') to represent minutes, and a double quote (") to represent 
#  	seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Examples:

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Note: your results may differ slightly depending on how you round values, 
# but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes
#  and seconds, e.g., 321°03'07".

# You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

def dms(angle)

	if angle == angle.to_i
		minutes_result = 0
		seconds_result = 0  
	else 
		minutes_result = (angle % angle.to_i) * 60
		seconds_result = (minutes_result - minutes_result.to_i) * 60
	end

	minutes_result = minutes_result.to_i.to_s
	seconds_result = seconds_result.to_i.to_s

	minutes_result = '0' << minutes_result if minutes_result.to_i < 10		 
	seconds_result = '0' << seconds_result if seconds_result.to_i < 10

	angle.to_i.to_s + DEGREE + minutes_result + '\'' + seconds_result + '"'

end



p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")