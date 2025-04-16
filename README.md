# RUBY Least Occurring Value in Array

This repository contains a Ruby script that implements a function to find the least occurring value in an array. The function adheres to specific requirements and includes a test suite to validate its behavior.

Original script was created in 2018 as one of coding tasks during mentoring session with one of my students to demonstrate test analysys basics and key Ruby syntaxys. 

Current Reamdme was created in 2025 as a part of my experiment to test how copylot AI can help in work with Ruby and to demonstrate the capabilities of AI in generating documentation and code comments, refactoring and tests pair review and increasing coverage.

---

## Features

### Core Functionality
The function `leastOccuringValueInArray` takes an input array and returns the least occurring value based on the following rules:
1. **REQ#1**: If multiple values have the same count, the first one in the array is returned.
2. **REQ#2**: `nil` and empty string (`""`) values are ignored when counting.
3. **REQ#3**: Non-string values (e.g., integers, booleans) are also counted.

### Error Handling
- Returns `"array is empty"` if the array is empty or contains only empty strings.
- Returns `"array without not-nil values"` if the array contains only `nil` values.

### Test Suite
The script includes a `testHelper` function to validate the behavior of `leastOccuringValueInArray` against various test cases, ensuring robust functionality.

---

## Usage

### Function: `leastOccuringValueInArray`

```ruby
def leastOccuringValueInArray(arr)
  # Function logic here
end
```

### Example

```ruby
result = leastOccuringValueInArray(["a", "a", "b", "c", "c", "c"])
puts result # Output: "b"
```

---

## Test Cases

The script uses a TDD (Test-Driven Development) approach with the `testHelper` function to validate the behavior of `leastOccuringValueInArray`.

### Example Test Case

```ruby
testHelper(["a", "a", "b", "c", "c", "c"], "Test Happy #1, Positive with required array", "b")
```

### Test Categories

1. **Positive Cases**:
   - Single value arrays.
   - Arrays with multiple values and ties.
   - Arrays with non-string values (e.g., integers, booleans).
   - Arrays with `nil` or empty string values ignored.

2. **Negative Cases**:
   - Empty arrays.
   - Arrays with only `nil` or empty string values.

---

## How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/AndriiStepura/RUBY-least-occurring-value-in-array.git
   cd RUBY-least-occurring-value-in-array
   ```

2. Run the script:
   ```bash
   ruby leastOccurringValueInArray.rb
   ```

3. View the test results in the console.

---

## Requirements

- Ruby 2.7 or higher.

---

## File Structure

```
leastOccurringValueInArray.rb
```

- **`leastOccurringValueInArray.rb`**: Contains the main function, test helper, and test cases.

---

## License

This project is licensed under the MIT License.
