# Solutions for Exercise 1 

magic_zoo = ["cow", "chicken", "snake", "dragon"]
puts "The original zoo:"
print magic_zoo; puts; puts;

# a: Move the chicken to the begining

#animal = magic_zoo.delete("chicken")
#magic_zoo.insert(0, animal)

magic_zoo.insert(0, magic_zoo.delete("chicken"))

puts "The chicken has been moved to the front"
print magic_zoo; puts; puts;


# b: Swap the first and last animals

#first_animal = magic_zoo.shift
#last_index = magic_zoo.length - 1
#last_animal = magic_zoo.delete_at(last_index)
#magic_zoo.insert(0, last_animal)
#magic_zoo << first_animal

first_animal = magic_zoo.shift # Remove the first animal
magic_zoo.insert(0, magic_zoo.delete_at(last_index = magic_zoo.length - 1)) # Put the last animal first 
magic_zoo << first_animal # Lastly, put the original first animal last 

puts "The first and last animals have been swapped"
print magic_zoo; puts; puts;


# c: Make a copy of the second animal and put it at the end
animal = magic_zoo[1]
magic_zoo.  << animal

puts "The second animal has been copied and put at the end"
print magic_zoo; puts; puts;


# d: Make a new zoo with everything in the first zoo
magic_zoo_2 = Array.new
magic_zoo.each do |current_animal|
  magic_zoo_2 << current_animal
end

puts "The zoo has been copied"
print magic_zoo_2; puts; puts;


# e: Make a new zoo containing everything in the first zoo in reverse order
magic_zoo_3 = Array.new
magic_zoo.reverse.each do |current_animal|
  magic_zoo_3 << current_animal
end

puts "The zoo has been copied in reverse"
print magic_zoo_3; puts; puts;

# This is another way to copy the zoo in reverse
magic_zoo_3 = Array.new
magic_zoo.each do |current_animal|
  magic_zoo_3.insert(0, current_animal)
end

puts "The zoo has been copied in reverse - a different way"
print magic_zoo_3; puts; puts;
