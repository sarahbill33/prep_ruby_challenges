#NOTES
# Assignment with the key :b adds a new entry
#hash[:b] = 'Bee'

def counting
	number = 1
	person = 1
	while number <= 100
		puts 'Person #' + person.to_s + ' said the number ' + number.to_s
		if number % 7 == 0
			i = 0
			while i < 7
				if person == 1
					person = 10
				else
					person = person - 1
				end
				number = number + 1
				puts 'Person #' + person.to_s + ' said the number ' + number.to_s
				i = i + 1
			end
			number = number - 1
			if person == 10
				person = 1
			else
				person = person + 1
			end
		else
			if person == 10
				person = 1
			else
				person = person + 1
			end
		end
	number = number + 1
	end
end

puts counting

#ISSUE: For some reason, the numbers get repeated during/after the 7 iterations

