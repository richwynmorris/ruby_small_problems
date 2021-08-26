file = File.read("book_extract.txt").split(/[!?.]/)

longest_sentence = []

file.each do |sentence|
	sentence.gsub!(/[\r\n]/, ' ')
end

file.each do |sentence|
	arr = sentence.split
	if arr.length > longest_sentence.length
		longest_sentence = arr
	end
end
puts "#{longest_sentence.join(' ')}"
puts "The longest sentence in the extract is #{longest_sentence.length} words long."
