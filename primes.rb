def is_prime? (number)
	if number > 1
		factor = 2
		answer = true
		while factor < number && answer == true
			if (number % factor) == 0
				answer = false
			else
				answer = true
			end
			factor = factor + 1
		end
	else
		answer = false
	end
	puts answer
end

puts is_prime?(7)