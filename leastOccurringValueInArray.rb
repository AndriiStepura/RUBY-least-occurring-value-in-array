100.times do print "*" end
puts "\nRUBY least occurring value in array:"
puts "write a function that takes an input array, and will return least occurring value"
100.times do print "*" end
puts ""
print "REQ#1: additional requirement - when same count for more than one value, return first. \n"
print "REQ#2: additional requirement - ignore nil values, count just character/string values. \n"
print "REQ#3: additional requirement - not string values, except nil count too. \n"
100.times do print "=" end
puts ""

# My function for return least occurring value in array
def leastOccuringValueInArray arr
	if arr.empty?
		return "array is empty"
	else
		arrUniq = arr.uniq
		# if (arrUniq.all? &:nil?) - was a wrong way, failed test #16, better for both 16 && 17 this trick:
		if (arrUniq.all? {|i| i.nil? or i == ""})
			return "array without not-nil values"	
		else 
			return false
		end
	end
end


# Test helper for print tests results
def testHelper arr, description, expected
	result = leastOccuringValueInArray(arr)
	String resultType = leastOccuringValueInArray(arr).class
	 
	String testStatus = "Failed"
	if (leastOccuringValueInArray(arr).class == expected.class)
		(leastOccuringValueInArray(arr) == expected)? testStatus = "Passed" : testStatus = "Failed"
	end
	
	# Print test results
	puts "| " + testStatus + " | " + description + ", expected: " + expected.to_s + "(" + expected.class.to_s + ")" + ", actual: " + result.to_s + "(" + resultType.to_s + ")"
end


# TDD approach, so I start here with few tests: as requirements:
# Call our function with required array
testHelper(["a", "a", "a", "a", "b", "b", "c", "d", "d", "d"], "Test Happy #1, Positive with required array", "c")

# Increase test coverage with positive cases
testHelper(["a"], "Test Happy #2, Positive with one value", "a")
testHelper(["a", "a"], "Test Happy #3, Positive with two same values", "a")
testHelper(["a", "b", "b","a"], "Test Happy #4, Positive with same count values (REQ#1)", "a")
testHelper(["c","a","a","c","a"], "Test Happy #5, Positive with once first value", "c")
testHelper(["c","a","b","c","d"], "Test Happy #6, Positive with once not first value", "a")
testHelper(["b", "c","a","c","a","b"], "Test Happy #7, Positive with twice first value", "b")
testHelper(["b", "c","a","b","c","a","b"], "Test Happy #8, Positive with twice not first value", "c")

# Verify that nil ignored when count REQ#2
testHelper(["", "c","a","a","c","a"], "Test Happy #9, Positive nil vales ignored (REQ#2)", "c")
testHelper(["c","","c","","a","c","a"], "Test Happy #10, Positive nil vales ignored (REQ#2)", "a")

# Verify that non-string values are also counted REQ#3
# booleans
testHelper([false,"c",false,true,"c","c"], "Test Happy #11, Positive non-string values are also counted - booleans (REQ#3)", true)
testHelper(["true",true,"true",false], "Test Happy #12, Positive non-string values are also counted - booleans (REQ#3)", true)
# int
testHelper([1,"1","1",2,1,2,2,"1"], "Test Happy #13, Positive non-string values are also counted - int first (REQ#3)", true)
testHelper([false,1,2,2,1,1], "Test Happy #14, Positive non-string values are also counted - int not first (REQ#3)", 2)

# Increase test coverage with negative cases
# Empty array
testHelper([], "Test Error #15, Empty array", "array is empty")
# Array with just nil values 
testHelper([""], "Test Error #16, Array with one nil value", "array without not-nil values")
testHelper(Array.new(3), "Test Error #17, Array with just nil values", "array without not-nil values")