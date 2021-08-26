def century(year)
	if year.digits.reverse.last == 0
		cent = (year / 100).to_s
	else
		cent = ((year / 100) + 1).to_s
	end

	if cent.end_with?('11', '12', '13')
		puts cent + 'th'
	else 
		if cent.end_with?('1')
			puts cent + 'st'
		elsif cent.end_with?('2')
			puts cent + 'nd'
		elsif cent.end_with?('3')
			puts cent + 'rd'
		else
			puts cent + 'th'
		end 
	end

end 

century(2000) #== '20th'
century(2001) #== '21st'
century(1965) #== '20th'
century(256) #== '3rd'
century(5) #== '1st'
century(10103) #== '102nd'
century(1052) #== '11th'
century(1127) #== '12th'
century(11201) #== '113th'