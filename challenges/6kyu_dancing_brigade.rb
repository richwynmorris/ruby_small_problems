# Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.
# Legend:
# -Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".
# -Function input: String contains only letters, uppercase letters are unique.
# Task:
# Place all people in alphabetical order where Mothers are followed by their children, i.e. "aAbaBb" => "AaaBbb".

def find_children(dancing_brigade)
  dancing_brigade.chars.sort_by { |letter| [letter.downcase, letter] }.join
end

# sort_by allows you to sort with multiple critera. In the example above, the letters are first sorted as downcase characters making the dancing_brigade [a,A,a,b,B,b]. Using the second criteria, they are then sorted by their letter. This priotises capitals over lowercase letters and places the capital at the beginng of each section.

p find_children("aAbaBb")
