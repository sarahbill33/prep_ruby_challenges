
# Here is the format of the ranges from the website:
#[ [0,0],[3,3] ], [ [1,1],[4,5] ]
# The format doesn't seem to work when passing the argument to the method
# Will have to use simpler format for method argument
def overlap(x1,y1,x2,y2,a1,b1,a2,b2)
#This section finds all integers in each range
	xStartNum = x1
	xEndNum = x2
	xRange = []
	aStartNum = a1
	aEndNum = a2
	aRange = []
#This finds integers in the x range, stored in xRange array
	while xStartNum <= xEndNum
		xRange << xStartNum
		xStartNum = xStartNum + 1
	end
#This finds integers in the a range, stored in aRange array
	while aStartNum <= aEndNum
		aRange << aStartNum
		aStartNum = aStartNum + 1
	end
#Now it's time to see if there are any matching numbers from each range
	i = 0
	firstOverlap = false
	while i < aRange.length &&  firstOverlap != true
		j = 0
		while j < xRange.length && firstOverlap != true
			if aRange[i] == xRange[j]
				firstOverlap = true
			else
				firstOverlap = false
			end
			j = j + 1
		end
		i = i + 1
	end
	yStartNum = x1
	yEndNum = x2
	yRange = []
	bStartNum = a1
	bEndNum = a2
	bRange = []
#This finds integers in the x range, stored in xRange array
	while yStartNum <= yEndNum
		yRange << yStartNum
		yStartNum = yStartNum + 1
	end
#This finds integers in the a range, stored in aRange array
	while bStartNum <= bEndNum
		bRange << bStartNum
		bStartNum = bStartNum + 1
	end
#Now it's time to see if there are any matching numbers from each range
	k = 0
	secondOverlap = false
	while k < bRange.length &&  secondOverlap != true
		l = 0
		while l < yRange.length && secondOverlap != true
			if bRange[k] == yRange[l]
				secondOverlap = true
			else
				secondOverlap = false
			end
			l = l + 1
		end
		k = k + 1
	end
	finalAnswer = 0
	if firstOverlap == true && secondOverlap == true
		finalAnswer = true
	else
		finalAnswer = false
	end
	puts finalAnswer
end

puts overlap(0,0,3,3,1,1,4,5)
#should be true

puts overlap(0,0,1,4,1,1,3,2)
#should be false