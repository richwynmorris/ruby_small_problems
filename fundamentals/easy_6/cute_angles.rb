DEGREE = "\xC2\xB0"
MINUTES = "'"
SECONDS = '"'

def dms(float)
	degree = float.to_i
	remainder = float - degree
	minute_result = remainder * 60 
	second_remainder = minute_result - minute_result.to_i 
	second_result = second_remainder * 60 

	second_answer = second_result.to_i
	minute_answer = minute_result.to_i

	second_answer = format("%02d", second_answer) if second_answer < 10
	minute_answer = format("%02d", minute_answer) if minute_answer < 10

	puts "%(#{degree}#{DEGREE}#{minute_answer}#{MINUTES}#{second_answer}#{SECONDS})"

end

dms(30) #== %(30°00'00")
dms(76.73) #== %(76°43'48")
dms(254.6) #== %(254°36'00")
dms(93.034773) #== %(93°02'05")
dms(0) #== %(0°00'00")
dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")