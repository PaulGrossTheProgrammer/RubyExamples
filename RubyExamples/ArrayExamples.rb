# Examples of useful array operations

# Create a new array - empty
puts "TESTING creating an empty array..."
array_test = Array.new

print array_test ; puts
puts "The array as this many elements: #{array_test.length}"; puts

# Create an array with elements
puts "TESTING creating with elements..."
array_test = [1, 2, 3]
print array_test; puts

array_test = Array([1, 2, 3]) # This works the same as the previous example
print array_test; puts; puts

# Add a new element to the end
puts "TESTING adding an element to the end..."
array_test = Array(1..5)
array_test << 9 # One way to add an element to the end
print array_test; puts; puts
array_test.push(8) # And another way to add an element to the end
print array_test; puts; puts

# Add a new element to the begining
puts "TESTING adding an element to the begining..."
array_test.insert(0, 7)
print array_test; puts; puts

# Remove the first element
puts "TESTING Removing an element..."
array_test = Array(1..5)
print array_test ; puts
deleted_element = array_test.shift
puts "The element removed was #{deleted_element}"
print array_test; puts; puts

# Remove elements from the middle of an array by name
array_test = Array(1..5)
deleted_element = array_test.delete(4)
puts "The element removed was #{deleted_element}"
print array_test; puts; puts

# Remove elements from the middle of an array by index
array_test = Array(1..5)
deleted_element = array_test.delete_at(1) # Note that the index is zero-based, so this deletes the second element
puts "The element removed was #{deleted_element}"
print array_test; puts; puts

# Determine a specific element
puts "TESTING accessing one element..."
array_test = [1, 2, 3]
print array_test; puts

# Note that the index is zero-based, so index 0 is the first element
puts "The element at index 0 = #{array_test[0]}"
puts "The element at index 1 = #{array_test[1]}"
# array_test.index(x) is an alternmative to array_test[x]
puts "The element at index 2 = #{array_test.index(2)}"

puts "The index of the last element = #{array_test.length() -1}"
puts "The last element = #{array_test[array_test.length() -1]}"
puts

# Create an array with a range of numbers or letters
puts "TESTING ranges..."
array_test = Array(1..5)
print array_test; puts

array_test = Array('A'..'F')
print array_test; puts; puts

# Testing searching for an element by value
puts "TESTING find..."
array_test = Array('A'..'F')
index_found = array_test.index("C")
puts "Found C at index #{index_found}"
puts

# Iterate the array
puts "TESTING iterating an array"
array_test = [1, 2, 3, 4]
print array_test ; puts
array_test.each do |current_element|
  puts "Current element is #{current_element}"
end
puts

puts "TESTING iterating an array in reverse"
array_test = [1, 2, 3, 4]
print array_test ; puts
array_test.reverse.each do |current_element|
  puts "Current element is #{current_element}"
end
puts

# Rotate the elements
puts "TESTING rotating all the elements left..."
array_test = Array(1..9)
deleted_element = array_test.shift
array_test << deleted_element
print array_test; puts

2.times do
  deleted_element = array_test.shift
  array_test << deleted_element
  print array_test; puts
end
puts

# Now we shift the other way...
puts "TESTING rotating all the elements right..."
array_test = Array(1..9)

deleted_element = array_test.pop
array_test.insert(0, deleted_element)
print array_test; puts

2.times do
  deleted_element = array_test.pop
  array_test.insert(0, deleted_element)
  print array_test; puts
end
puts
