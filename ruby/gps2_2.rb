# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # initialize hash
  # break user input into individual items
  # add individual items into the hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(items)
  grocery_list = {}
  item_array = items.split(" ")
  item_array.each do |item|
    grocery_list[item] = 1
  end
  print_list(grocery_list)
  grocery_list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # Get item name from user
  # Ask for quanity; allow user to skip
  # If qty is not given, use default qty
  # add item and qty to the hash
# output: print list to console

def add_item(item, item_qty, grocery_list)
  grocery_list[item] = item_qty
  # print_list(grocery_list)
  grocery_list
end

# Method to remove an item from the list
# input: item name
# steps: 
  # get item name from user
  # remove that item from list (including qty)
# output: updated list

def remove_item(item, grocery_list)
  grocery_list.delete(item)
  # print_list(grocery_list)
  grocery_list
end

# Method to update the quantity of an item
# input: item name
# steps:
  # get item name from user
  # get new qty
  # update qty
# output: updated list

def update_qty(item, item_qty, grocery_list)
  grocery_list[item] = item_qty
  # print_list(grocery_list)
  grocery_list
end

# Method to print a list and make it look pretty
# input: list name
# steps:
  # print the list - with each item and qty on seperate lines
  # use '-' or ':' between item and qty
# output: printed list to console

def print_list(grocery_list)
  grocery_list.each do |item, qty|
    p "#{item}: #{qty}"
  end
end

#grocery_list = create_list("milk")
#grocery_list = remove_item("milk", grocery_list)

grocery_list = create_list("")
grocery_list = add_item("lemonade", 2, grocery_list)
grocery_list = add_item("tomatoes", 3, grocery_list)
grocery_list = add_item("onions", 1, grocery_list)
grocery_list = add_item("ice cream", 4, grocery_list)
grocery_list = remove_item("lemonade", grocery_list)
grocery_list = update_qty("ice cream", 1, grocery_list)
print_list(grocery_list)

# grocery_list = add_item("bananas", 2, grocery_list)
# remove_item("carrots", grocery_list)
# update_qty("cereal", 10, grocery_list)

# Reflection

# I learned a great deal about pseudocode from working on this challenge.
# I learned to make pseudocode more detailed than I previously had been, and to
# make sure to avoid technical and language-specific words in the pseudocode. Before,
# my pseudocode was not easily translatable line by line into code, but I will aim to do
# this in the future.

# A hash works better for the grocery list because the quantity of the item
# can be directly connected to the item's name, and it can be updated. This is not
# doable with an array.

# A method returns whatever it is explicitly told to using the "return" keyword, or
# whatever is on the last line of the method. Printing something from the method does
# not make it return that as a value.

# You can pass any type of data into a method. If the data that is being passed in
# is being passed in as a variable, that variable needs to have a scope that allows it
# to be accessed by the method.

# Information can be passed between methods by making a variable outside of the method
# be equivalent to a calling of the method. This variable will then be equal to whatever
# was returned by the method. Additionally, nesting methods allows information to be passed
# between them. For example, lines 79 and 80 above could be rewritten as
# add_item("lemonade", 2, create_list("")).

# The use of a variable to store the returned value of a method was solidified for me
# in this challenge. I had never thought of doing this before. The only thing discussed
# in this challenge that is still unclear to me is the idea of refactoring code. To refactor
# our code, my partner and I mostly just re-named variables and parameters to clarify their usage.
# I assume that the benefits of refactoring will become clearer when the methods that I am building 
# become more complex.