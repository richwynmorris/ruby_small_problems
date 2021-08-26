def balanced?(str)

	b_indt = { '(' => ')' , ')' => '(' }

	brackets = str.scan(/\)|\(/)

	return false if brackets.length.odd?
	return false if brackets == [')','(']
	return true if brackets.empty?

	brackets.each do |char|
		if b_indt.key(char) && brackets.pop == b_indt[char]
			str = true
		else
			str = false
		end
	end

	str

end

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!') #== true
p balanced?(')Hey!(') #== false
p balanced?('What ((is))) up(') #== false