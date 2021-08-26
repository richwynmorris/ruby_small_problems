# Solution:
def greetings(arr, hsh)

	puts  "Hello, #{arr.join(' ')}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."

end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

# Further exploration:
def greetings_1(arr, hsh)

	puts <<-text 
	Hello, #{arr.join(' ')}!
	Nice to have a #{hsh[:title]} #{hsh[:occupation]} around.
	text

end

greetings_1(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })