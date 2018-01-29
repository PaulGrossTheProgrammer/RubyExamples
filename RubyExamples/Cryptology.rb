puts 'Cryptology tests...'

plaintext_alphabet = Array('A'..'Z')

puts "Plaintext alphabet:"
print plaintext_alphabet ; puts ; puts

encryption_alphabet = Array('A'..'Z')

# Modify the encryption alphabet

=begin
# Move a letter to the end by name
deletedLetter = encryption_alphabet.delete("A")
encryption_alphabet << deletedLetter

# Move a letter to the end by position
deletedLetter = encryption_alphabet.delete_at(0)
encryption_alphabet << deletedLetter

# Shift the first letter to the end
deletedLetter = encryption_alphabet.shift
encryption_alphabet << deletedLetter

puts "Encryption alphabet:"
print encryption_alphabet ; puts ; puts
=end

# Convert keyphrase to unique array of uppercase letters
keyphrase = "fire in the sky"
puts keyphrase

keyphrase = keyphrase.upcase
puts keyphrase

# Extract each letter and put it in an array
keyphrase_array = Array.new # Start with an empty array
keyphrase.each_char do |currLetter|
  if plaintext_alphabet.find_index(currLetter) and keyphrase_array.find_index(currLetter) == nil
    keyphrase_array << currLetter
  end
end

puts "Keyphrase array:"
print keyphrase_array ; puts

# Remove the letters in the keyphrase from the encryptionAlphabet
keyphrase_array.each do |currLetter|
  encryption_alphabet.delete(currLetter)
end

puts "Encryption alphabet:"
print encryption_alphabet
puts "\r"

# Stick the keyphrase on the front of the encryption_alphabet
encryption_alphabet = keyphrase_array << encryption_alphabet
encryption_alphabet.flatten!

puts "Encryption alphabet:"
print encryption_alphabet ; puts ; puts

plaintext = "Amelie Tabor"
plaintext = plaintext.upcase

cyphertext = ""
plaintext.each_char do |current_character|
  #  puts current_character
  # Lookup letter in plaintext to get index
  index = plaintext_alphabet.index(current_character)
  if index != nil
    #    puts "Plaintext index " << index.to_s
    cypher_character = encryption_alphabet[index]
    #    puts "Cypher: " <<  cypher_character.to_s
    cyphertext << cypher_character
  else
    cyphertext << " "
  end
end

puts cyphertext

