def factorial(x)
	y = 1
	answer = 1
	while y < x
		answer = answer * (y+1)
		y = y + 1
	end
	puts answer
end

puts factorial(5)