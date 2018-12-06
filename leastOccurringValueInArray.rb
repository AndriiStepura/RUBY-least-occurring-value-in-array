print "RUBY least occurring value in array \n"

# My function for return least occurring value in array
def leastOccuringValueInArray arr
	return false
end

# Test helper for print tests results
def testHelper arr, description, expected
	String result = leastOccuringValueInArray(arr)
	puts description + ", expected result: " + expected + ", actual result: " + result.to_s + " | test passed - " + (result == expected).to_s
end

# Call our function with required array
testHelper(["a", "a", "a", "a", "b", "b", "c", "d", "d", "d"], "Test #1, Positive with required array", "c")