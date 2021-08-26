def num_of_chars
	puts "Please write word or multiple words:"
	answer = gets.chomp

	chars = answer.chars
	chars.delete(' ')
	num_of_chars = chars.count

	puts "There are #{num_of_chars} characters in #{answer}."
end

num_of_chars