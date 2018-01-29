puts 'Cryptology tests...'

plaintextAlphabet = Array('A' .. 'Z')

puts "Plaintext alphabet:"
print plaintextAlphabet
puts "\r"

encryptionAlphabet = Array('A' .. 'Z')

# Modify the encryption alphabet

=begin
# Move a letter to the end by name
deletedLetter = encryptionAlphabet.delete("A")
encryptionAlphabet << deletedLetter

# Move a letter to the end by position
deletedLetter = encryptionAlphabet.delete_at(0)
encryptionAlphabet << deletedLetter

# Shift the first letter to the end
deletedLetter = encryptionAlphabet.shift
encryptionAlphabet << deletedLetter

puts "Encryption alphabet:"
print encryptionAlphabet
puts "\r"
=end

# Convert keyphrase to unique array of uppercase letters
keyphrase = "fire in the sky"
puts keyphrase

keyphrase = keyphrase.upcase
puts keyphrase

# Extract each letter and put it in an array
keyphraseArray = Array.new # Start with an empty array
keyphrase.each_char do |currLetter|
  if plaintextAlphabet.find_index(currLetter) and keyphraseArray.find_index(currLetter) == nil
#    puts 'Letter: ' + currLetter
#    puts keyphraseArray.find_index(currLetter) == nil
    
    keyphraseArray << currLetter
  end 
end

puts "Keyphrase array:"
print keyphraseArray
puts "\r"

# Remove the letters in the keyphrase from the encryptionAlphabet
keyphraseArray.each do |currLetter|
  encryptionAlphabet.delete(currLetter)
end

puts "Encryption alphabet:"
print encryptionAlphabet
puts "\r"

# Stick the keyphrase on the front of the encryptionAlphabet
encryptionAlphabet = keyphraseArray << encryptionAlphabet

puts "Encryption alphabet:"
print encryptionAlphabet
puts "\r"

