require 'Cryptology'

while true

  puts "Enter 'E' to encrypt, or 'D' to decrypt, 'Q' to quit:"
  user_option = gets.chomp.upcase
  if user_option == "Q"
    puts "Quit - goodbye!"
    return
  end

  puts "Enter the text:"
  text = gets.chomp

  puts "Enter the Caesar shift:"
  caesar_shift = gets.chomp.to_i

  plaintext_alphabet = Array('A'..'Z')

  shift_cipher_alphabet = build_shiftcipher_alphabet(plaintext_alphabet, caesar_shift)

  result = ""
  case user_option

  when "E"
    result = encrypt(plaintext_alphabet, shift_cipher_alphabet, text)
  when "D"
    result = decrypt(plaintext_alphabet, shift_cipher_alphabet, text)
  end

  puts result

end