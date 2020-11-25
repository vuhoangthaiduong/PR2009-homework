a = [2,3,4,6,7]

#1st way
def sum1(array)
	return array.reduce(0){|sum, num| sum + num}
end

puts sum1(a)

#2nd way
def sum2(array)
	if array.length() == 0
		return 0
	else
		sum = 0
		array.each do |num|
			sum += num
		end
		return sum
	end
end

puts sum2(a)