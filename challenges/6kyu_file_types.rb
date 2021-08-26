# You've been working with a lot of different file types recently as your interests have broadened.

# But what file types are you using the most? With this question in mind we look at the following problem.

# Given a List/Array of Filenames (strings) files return a List/Array of string(s) contatining the most common extension(s). If there is a tie, return a sorted list of all extensions.
# Important Info:

#     Don't forget, you've been working with a lot of different file types, so expect some interesting extensions/file names/lengths in the random tests.
#     Filenames and extensions will only contain letters (case sensitive), and numbers.
#     If a file has multiple extensions (ie: mysong.mp3.als) only count the the last extension (.als in this case)

# Examples

# files = ['Lakey - Better days.mp3', 
#          'Wheathan - Superlove.wav', 
#          'groovy jam.als', 
#          '#4 final mixdown.als', 
#          'album cover.ps', 
#          'good nights.mp3']

# would return: ['.als', '.mp3'], as both of the extensions appear two times in files.

# files = ['Lakey - Better days.mp3', 
#          'Fisher - Stop it.mp3', 
#          'Fisher - Losing it.mp3', 
#          '#4 final mixdown.als', 
#          'album cover.ps', 
#          'good nights.mp3']

# would return ['.mp3'], because it appears more times then any other extension, and no other extension has an equal amount of appearences.

# Input: an array of strings
# Output: an array with the most common file type from the argument.
# Rules: if there is no clear majority, return an array with the most common file types.

# Mental Model
# initalize a new hash called results
# Iterate through the array.
# iterate though the characters of each string
# when you find '.', slice from that index to -1
# call it file_type
# push file to hash and add 1
# return the highest value from the hash


def solve(files)
  results = Hash.new(0)
  
  most_common_file_type = []
  
  files.each do |file|
    file.chars.each_with_index do |char, index|
      if char.eql?('.')
        file_type = file.slice(index..-1)
        results[file_type] += 1
      end
    end
  end
  
  results.each { |k, v| most_common_file_type << k if v == results.values.max }
  
  most_common_file_type
  
end

files = ['Lakey - Better days.mp3', 
         'Wheathan - Superlove.wav', 
         'groovy jam.als', 
         '#4 final mixdown.als', 
         'album cover.ps', 
         'good nights.mp3']

p solve(files)