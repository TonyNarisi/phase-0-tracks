p "How many employees will be processed?"
employee_number = gets.chomp

loop_check = 1

while loop_check <= employee_number.to_i

  p "What is your name?"
  name = gets.chomp
  p "How old are you?"
  age = gets.chomp
  p "What year were you born?"
  birth_year = gets.chomp
  p "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic_bread = gets.chomp
  p "Would you like to enroll in the company's health insurance?"
  health_insurance = gets.chomp
  p "Please list any allergies. Press enter after each one and type 'done' when finished."
  allergy = gets.chomp
  until allergy == "done"
    if allergy == "sunshine" then
      break
    end
    p "Please continue listing allergies. Type 'done' if finished."
    allergy = gets.chomp
  end

  if allergy == "sunshine"
    result = "Probably a vampire"
  else
    if name == "Drake Cula" || name == "Tu Fang"
      result = "Definitely a vampire"
    elsif (2016 - birth_year.to_i == age.to_i) && (garlic_bread.downcase == "yes" || health_insurance.downcase == "yes")
      result = "Probably not a vampire"
    elsif  (2016 - birth_year.to_i != age.to_i) && garlic_bread.downcase == "no" && health_insurance.downcase == "no"
      result = "Almost certainly a vampire"
    elsif (2016 - birth_year.to_i != age.to_i) && (garlic_bread.downcase == "no" || health_insurance.downcase == "no")
      result = "Probably a vampire"
    else
      result = "Results inconclusive"
    end
  end

  p result

  loop_check += 1

end

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."