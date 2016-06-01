# Pseudocode
# Split the full name string into an array to separate first and last names
# Reverse the position of the names
# Join the names back together
# Make all letters in the full name lowercase so that they are easier to smoothly manipulate
# Define string of all vowels and string of all consonants
# Loop through the string, changing all vowels to next vowel and all consonants to next consonant
#   Use previously defined strings to change these
#   Define special conditions for edge cases
# Capitalize the first letter of the first name and of the last name

def alias_creator(name)
  reversed_name = name.split(" ").reverse.join(" ")
  reversed_name.downcase!
  codename = ""
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
  reversed_name.split("").map do |char|
    if vowels.include?(char) && char != "u"
      codename << vowels[vowels.index(char) + 1]
    elsif char == "u"
      codename << "a"
    elsif consonants.include?(char) && char != "z"
      codename << consonants[consonants.index(char) + 1]
    elsif char == "z"
      codename << "b"
    else
      codename << char
    end
  end
  codename.split(" ").map{ |word| word.capitalize }.join(" ")
end

# Driver Code

# Creates the variables needed to store user input
alias_hash = {}
user_name = ""

# Takes user input for names, and stores names as keys in hash, with aliases as values
# Loops until user quits, and does not assign an alias to the user input of "quit"
until user_name == "quit"
  p "Hello. What is the name you'd like to create an alias for? (Type 'quit' to exit program)"
  user_name = gets.chomp
  break if user_name == "quit"
  alias_hash[user_name] = alias_creator(user_name)
end

# Prints sentences giving every alias created during session
alias_hash.each do |real_name, fake_name|
  p "#{fake_name}'s real name is #{real_name}."
end