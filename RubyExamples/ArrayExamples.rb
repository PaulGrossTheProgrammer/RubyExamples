# Examples of useful array operations

# Create a new array - empty
puts "Testing creating an empty array..."
array_test = Array.new

print array_test ; puts
puts "The array as this many elements: " + array_test.length.to_s ; puts

# Create an array with elements
puts "Testing creating with elements..."
array_test = [1, 2, 3]
print array_test ; puts

array_test = Array([1, 2, 3]) # This works the same as the previous example
print array_test ; puts
puts

# Determine a specific element
puts "Testing accessing one element..."
array_test = [1, 2, 3]
print array_test ; puts
# Note that the index is zero-based, so index 0 is the first element
puts "The element at index 0 = #{array_test[0]}"
puts "The element at index 1 = #{array_test[1]}"
puts "The element at index 2 = #{array_test[2]}"

puts "The index of the last element = #{array_test.length() -1}"
puts "The last element = #{array_test[array_test.length() -1]}"
puts

# Iterate the array
puts "Testing iterating an array"
array_test = [1, 2, 3]
print array_test ; puts
array_test.each do |current_element|
  puts "Current element is #{current_element}"
end
puts

# Create array with nil elements
puts "Testing elements that are nil..."
array_test = Array.new(3)
print array_test ; puts
puts "The array as this may elements: " + array_test.length.to_s ; puts

# Create an array with a range of numbers or letters
puts "Testing ranges..."
array_test = Array(1..5)
print array_test ; puts

array_test = Array('A'..'F')
print array_test ; puts
puts

# Testing searching for an element by value
puts "Testing find..."
array_test = Array('A'..'F')
index_found = array_test.index("C")
puts "Found C at index " << index_found.to_s
puts

# Add a new element to the end
puts "Testing adding an element..."
array_test = Array(1..5)
array_test << 9
print array_test ; puts
puts

# Remove the first element
array_test = Array(1..5)
print array_test ; puts
deleted_element = array_test.shift
puts "The element removed was " + deleted_element.to_s
print array_test ; puts
puts

# Remove elements from the middle of an array by name
array_test = Array(1..5)
deleted_element = array_test.delete(4)
puts "The element removed was " + deleted_element.to_s
print array_test ; puts
puts

# Remove elements from the middle of an array by index
array_test = Array(1..5)
deleted_element = array_test.delete_at(1) # Note that the index is zero-based, so this deletes the second element
puts "The element removed was " + deleted_element.to_s
print array_test ; puts
puts

