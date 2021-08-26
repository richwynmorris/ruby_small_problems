# Solution 
def staggered_case(str)
	arr = str.chars

	arr.each_with_index do |letter, index|
		if index.even?
			letter.upcase!
		else
			letter.downcase!
		end
	end

	arr.join

end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'