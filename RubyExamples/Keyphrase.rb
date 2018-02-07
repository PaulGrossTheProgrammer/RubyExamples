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

  puts "Enter the keyphrase:"
  keyphrase = gets.chomp

  plaintext_alphabet = Array('A'..'Z')

  keyphrase_cipher_alphabet = build_keyphrase_cipher_alphabet(plaintext_alphabet, keyphrase)

  result = ""
  case user_option

  when "E"
    result = encrypt(plaintext_alphabet, keyphrase_cipher_alphabet, text)
  when "D"
    result = decrypt(plaintext_alphabet, keyphrase_cipher_alphabet, text)
  end

  puts result

end