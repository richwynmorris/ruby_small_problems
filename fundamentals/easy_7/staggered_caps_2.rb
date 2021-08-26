# solution 
def staggered_case(str)
	
	arr = str.chars

	index = 0 

	arr.each do |letter|
		if letter =~ /[A-za-z]/ && index.even?
			letter.upcase!
			index += 1
		elsif letter =~ /[A-za-z]/ && index.odd?
			letter.downcase!
			index += 1
		end
	end

	arr.join

end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


# further exploration 
def staggered_case_1(str)
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

def staggered_case_2(str)
	

	arr = str.chars

	index = 0 

	arr.each do |letter|
		if letter =~ /[A-za-z]/ && index.even?
			letter.upcase!
			index += 1
		elsif letter =~ /[A-za-z]/ && index.odd?
			letter.downcase!
			index += 1
		end
	end

	arr.join

end

def choose_staggered_case(str, ignore_non_alphab = 'true')
	if ignore_non_alphab == 'false'
		staggered_case_2(str)
	else
		staggered_case_1(str)
	end
end

 p choose_staggered_case('I Love Launch School!', 'false') == 'I lOvE lAuNcH sChOoL!'
	
