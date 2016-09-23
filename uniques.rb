def uniques (array)
	uniqueHash = {}
	arrayPosition = 0
	while arrayPosition < array.length
		uniqueHash[array[arrayPosition]] = array[arrayPosition]
		arrayPosition = arrayPosition + 1
	end
	puts uniqueHash.keys
end

puts uniques ([1,"cat",2,3,2,"cat","dog"])