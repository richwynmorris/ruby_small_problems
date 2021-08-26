# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century 
# number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Examples:

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

def century(year)
	century  = year / 100

	century += 1 if year.digits.reverse.pop > 0

	century_string = century.to_s

	return century_string << 'th' if ('11'..'13').to_a.include?(century_string[-2,2])

	case 
	when century_string.end_with?('1')
		century_string << 'st'
	when century_string.end_with?('2')
		century_string << 'nd'
	when century_string.end_with?('3')
		century_string << 'rd'
	else
		century_string << 'th'
	end
	century_string
end

puts century(2000) #== '20th'
puts century(2001) #== '21st'
puts century(1965) #== '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) #== '12th'
puts century(11201) #== '113th'