def print_in_box(str)

lines = '-'.center(str.length, '-')
spaces = ' '.center(str.length, ' ')

my_str = <<-BOX
+-#{lines}-+
| #{spaces} |
| #{str} |
| #{spaces} |
+-#{lines}-+
BOX

puts my_str
end

print_in_box('To boldly go where no one has gone before.')