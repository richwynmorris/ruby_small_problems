def diamond(n)

	1.step(n, 2) do |v|
		puts "#{('*' * v)}".center(n)
	end

	down_again = n - 2

	down_again.step(1,-2) do |v|
		puts "#{('*' * v)}".center(n)
	end

end

diamond(9)