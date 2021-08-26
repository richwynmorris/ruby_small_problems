#Write a method that will take a short line of text, and print it within a box.

def print_in_box(string)

	num_of_lines_spaces = string.length

<<-banner 
+-#{ '-' * num_of_lines_spaces }-+
| #{ ' ' * num_of_lines_spaces } |
| #{string} |
| #{ ' ' * num_of_lines_spaces } |
+-#{ '-' * num_of_lines_spaces }-+

banner

end

puts print_in_box('To boldly go where no one has gone before.')