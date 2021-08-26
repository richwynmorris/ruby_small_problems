# Solution:
def center_of(str)

	if str.length.odd? 
		halfway = str.length / 2
		str[halfway]
	elsif str.length.even?
		halfway = (str.length / 2) - 1
		str[halfway].concat(str[halfway + 1])
	end

end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'