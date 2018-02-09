ages = {"Paul"=> 46, "Amelie"=> 12, "Anna"=> 24}

puts ages

puts ages["Amelie"]

# Paul has a birthday
puts "Paul's age was #{ages["Paul"]} years old"

#current_age = ages["Paul"]
#ages["Paul"] = current_age + 1
ages["Paul"] = ages["Paul"] + 1

puts "Paul's age is now #{ages["Paul"]} years old"

puts
puts "All the ages: #{ages}" 

# Everyone gets a birthday
ages.each do |name, age|
  puts "#{name} was #{age} years old"
  ages[name] = age + 1
  puts "#{name} is now #{ages[name]} years old"
end

puts
puts "All the ages: #{ages}" 
