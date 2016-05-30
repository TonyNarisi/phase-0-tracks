# The program should begin with an empty "client" hash.
# The program should ask the user for the required information one question at a time
#   The user's input should be saved as the value of a hash key-value pair
# When the values have all been assigned, the program should display the full hash to the user
# The program should ask the user if they would like to update or change any value
#   If the user enters the string "none", the program will display the full, confirmed hash
#   If the user enters a key, the program will re-access it by converting the string into a symbol
#     The program will ask the user for the new value for this key
#     The program will display the full, confirmed, and updated hash after the update

client = {}

p "What is the client's name?"
client[:name] = gets.chomp.capitalize
p "What the client's age?"
client[:age] = gets.chomp.to_i
p "What is the client's favorite color?"
client[:favorite_color] = gets.chomp
p "How many children does the client have?"
client[:num_of_children] = gets.chomp.to_i
p "Does the client want new paint colors ('yes' or 'no')?"
client[:new_paint] = gets.chomp
  until client[:new_paint] == true || client[:new_paint] == false
    if client[:new_paint] == "yes"
      client[:new_paint] = true
    elsif client[:new_paint] == "no"
      client[:new_paint] = false
    else
      p "Please answer the question with a 'yes' or 'no'."
      client[:new_paint] = gets.chomp
    end
  end
p "How many rooms does the client want re-designed?"
client[:num_of_rooms] = gets.chomp.to_i

p client

p "Please enter the name of any field you would like to update (type 'none' if you wish to not update any)."
update_field = gets.chomp
if update_field != "none"
  p "Please enter new value."
  client[update_field.to_sym] = gets.chomp
end

p client