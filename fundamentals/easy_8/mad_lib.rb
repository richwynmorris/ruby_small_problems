# Solution

words = {}

word_classes = ['noun', 'verb', 'adjective', 'adverb']

word_classes.each do |word|
  if word[0] == 'a'
    puts "Enter an #{word}:"
    answer = gets.chomp
    words[word.to_sym] = answer
  else
    puts "Enter a #{word}:"
    answer = gets.chomp
    words[word.to_sym] = answer
  end
end

puts "Do you #{words[:verb]} your #{words[:adjective]} #{words[:noun]} #{words[:adverb]}? That's hilarious!"
