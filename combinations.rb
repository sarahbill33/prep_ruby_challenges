def combinations (array1, array2)
	array1Pos = 0
	array2Pos = 0
	finalArray = []
	while array1Pos < array1.length
		while array2Pos < array2.length
		finalArray << array1[array1Pos] + array2[array2Pos]
		array2Pos = array2Pos + 1
		end
		array2Pos = 0
		array1Pos = array1Pos + 1
	end
	puts finalArray
end

puts combinations(["on","in"],["to","rope"])