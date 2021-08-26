# Mad libs are a simple game where you create a story template with blanks for words. You, 
# or another player, then construct a list of words and place them into the story, creating
#  an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective 
# and injects those into a story that you create.

# Example

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

def madlibs

  word_classes = ['noun', 'verb', 'adjective', 'adverb']

  data = Hash.new('')

  word_classes.each do |word_type|
    puts "Enter a #{word_type}:"
    answer = gets.chomp
    data[word_type] = answer
  end

  puts <<-response
  Do you #{data['verb']} your #{data['adjective']} #{data['noun']} #{data['adverb']}? That's hilarious!
  response

end

madlibs