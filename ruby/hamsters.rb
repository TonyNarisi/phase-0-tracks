p "What is the hamster's name?"
name = gets.chomp
p "What is the hamster's volume level, on a scale from 1 to 10?"
volume_level = gets.chomp
p "What is the hamster's fur color?"
fur_color = gets.chomp
p "Is the hamster a good candidate for adoption?"
good_candidate = gets.chomp
p "What would you estimate the hamster's age to be?"
estimated_age = gets.chomp
if estimated_age == ""
  estimated_age = nil
end