p "What is the hamster's name?"
name = gets.chomp
p "What is the hamster's volume level, on a scale from 1 to 10?"
volume_level = gets.chomp.to_i
p "What is the hamster's fur color?"
fur_color = gets.chomp
p "Is the hamster a good candidate for adoption?"
good_candidate = gets.chomp
p "What would you estimate the hamster's age to be?"
estimated_age = gets.chomp.to_i
if estimated_age == ""
  estimated_age = nil
else
  estimated_age
end

p "The hamster's name is #{name}, and it's volume level is #{volume_level}.
The hamster's fur color is #{fur_color}. Is it a good candidate for adoption? #{good_candidate}.
I would estimate the hamster's age to be #{estimated_age}."
