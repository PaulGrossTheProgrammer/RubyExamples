puts 'Cryptology tests...'

# Builds a new cipher alphabet using the Caesar shift
def build_shiftcipher_alphabet(plaintext_alphabet, shift_count)
  puts "Building shift cipher alphabet..."

  # Copy the plaintext alphabet to a new cipher alphabet
  cipher_alphabet = Array.new
  plaintext_alphabet.each do |current_letter|
    cipher_alphabet << current_letter
  end

  # Shift the encryption alphabet
  shift_count.times do
    cipher_alphabet << cipher_alphabet.shift
  end

  cipher_alphabet
end

# Builds a new cipher alphabet using the keyphrase
def build_keyphrase_cipher_alphabet(plaintext_alphabet, keyphrase) 
  puts "Building keyphrase cipher alphabet..."

  # Copy the plaintext alphabet to a new cipher alphabet
  cipher_alphabet = Array.new
  plaintext_alphabet.each do |current_letter|
    cipher_alphabet << current_letter
  end
  
  keyphrase_array = Array.new # Start with an empty array
  keyphrase.upcase.each_char do |currLetter|
    if plaintext_alphabet.find_index(currLetter) and keyphrase_array.find_index(currLetter) == nil
      keyphrase_array << currLetter
    end
  end
  
  # Move the keyphrase letters to the start of the encryption alphabet
  keyphrase_array.reverse.each do |current_letter|
    cipher_alphabet.delete(current_letter)
    cipher_alphabet.insert(0, current_letter)
  end
  
  cipher_alphabet
end

def encrypt(plaintext_alphabet, cipher_alphabet, plaintext)
  ciphertext = ""

  plaintext.upcase.split.each do |current_word| # split plaintext into words
    current_word.each_char do |current_character|
      index = plaintext_alphabet.index(current_character) # Lookup letter in plaintext to get index
      if index != nil
        ciphertext << cipher_alphabet[index]
      end
    end
    ciphertext << " " # add a space between words
  end

  ciphertext
end


plaintext = "Amleie Tabor"

plaintext_alphabet = Array('A'..'Z')

# Use a Caesar shift alphabet
shift6_cipher_alphabet = build_shiftcipher_alphabet(plaintext_alphabet, 6)
print shift6_cipher_alphabet; puts; puts

ciphertext = encrypt(plaintext_alphabet, shift6_cipher_alphabet, plaintext)
puts ciphertext

# Reverse the encryption
decoded_text = encrypt(shift6_cipher_alphabet, plaintext_alphabet, ciphertext)
puts decoded_text

puts; puts

# Now use a keyphrase alphabet 
keyphrase1_cipher_alphabet = build_keyphrase_cipher_alphabet(plaintext_alphabet, "fire in the sky")
print keyphrase1_cipher_alphabet; puts; puts
ciphertext = encrypt(plaintext_alphabet, keyphrase1_cipher_alphabet, plaintext)
puts ciphertext

# Reverse the encryption
decoded_text = encrypt(keyphrase1_cipher_alphabet, plaintext_alphabet, ciphertext)
puts decoded_text

