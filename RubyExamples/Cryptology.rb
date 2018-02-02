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

# Move the keyphrase letters to the start of the encryption alphabet
keyphrase_array.reverse.each do |current_letter|
  encryption_alphabet.delete(current_letter)
  encryption_alphabet.insert(0, current_letter)
end

puts "Encryption alphabet:"
print encryption_alphabet ; puts ; puts

plaintext = "Amelie Tabor"
#puts "Please enter plaintext:"
#plaintext = gets
puts plaintext
plaintext = plaintext.upcase

cyphertext = ""

plaintext.split.each do |current_word| # split plaintext into words
  current_word.each_char do |current_character|
    index = plaintext_alphabet.index(current_character) # Lookup letter in plaintext to get index
    if index != nil
      cypher_character = encryption_alphabet[index] # Lookup index in the encryption alphabet
      cyphertext << cypher_character
    end
  end
  cyphertext << " "
end

puts cyphertext

