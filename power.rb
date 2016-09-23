def power(x,y)
	count = 0
	answer = x
	while count < (y - 1)
		answer = answer * x
		count = count + 1
	end
	puts answer
end

puts power(2,7)