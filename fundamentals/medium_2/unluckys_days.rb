
require 'date'


def friday_13th(year)

	month = 1

	num_of_fridays = 0

	loop do
		break if month > 12

		num_of_fridays += 1 if Date.new(year, month, 13).friday?

		month += 1

	end

	return num_of_fridays

end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2