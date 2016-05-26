# Encrypt Method
# Moves every letter in string forward one letter in alphabet
# Loop through the string
# At every index of string, replace original letter with next letter of alphabet
#   If the character is a space, do not alter it
# Implicitly return the string, with all changes saved within it

def encrypt(str)

  index = 0
  while index < str.length
    if str[index] == "z"
      str[index] = "a"
    elsif str[index] != " "
      str[index] = str[index].next
    end
    index += 1
  end
  str

end

# Decrypt Method
# Moves every letter in string back one letter in alphabet
# Loop through the string
# At every index of string, replace original letter with previous letter of alphabet
#   If the character is a space, do not alter it
# Implicitly return the string, with all changes saved within it

def decrypt(str)

  alphabet = "abcdefghijklmnopqrstuvwxyz"
  idx = 0
  while idx < str.length
    if str[idx] != " "
      str[idx] = alphabet[alphabet.index(str[idx]) - 1]
    end
    idx += 1
  end
  str

end

# p encrypt("abc")
# p encrypt("zed")

# p decrypt("bcd")
# p decrypt("afe")

# p decrypt(encrypt("swordfish"))
# This method call works because we are first moving all
# the letters of the string forward once,
# then moving the letters of this new string back once,
# which brings them to their original position.

# DRIVER CODE

# Interface Pseudocode
# Print question asking if user wants to encrypt or decrypt
# Use a gets.chomp to take user input
# Print question asking user for password (argument being given to method)
# Use a gets.chomp to take user input
# Use user input from first question to decide which method will be called
# Call the method using the argument given by the user
# Print the result to the screen

# Asks user which method will be called
p "Would you like to encrypt or decrypt a password?"
user_choice = gets.chomp

# Asks user to argument for method
p "What is the password you would like to encrypt or decrypt?"
password = gets.chomp

# Makes decision based on user input and prints result
if user_choice == "encrypt"
  p encrypt(password)
elsif user_choice == "decrypt"
  p decrypt(password)
else
  p "Sorry, we did not recognize that choice. Self-destruct in 5..."
end