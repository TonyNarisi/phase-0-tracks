# Designing a "Cup" class
# Every cup has four attributes:
#   - size (in mL)
#   - contents (can be changed by user)
#   - amount of liquid in cup (in mL)
#   - color
# Every cup has three methods:
#   - pour out (removes a specified amount of liquid)
#   - fill up (adds a specified amount of liquid)
#   - ponder life (user looks at cup and wonders if it is half full or half empty)

class Cup

  attr_reader :size, :color, :liquid_amount

  attr_accessor :contents

  def initialize(size, contents, liquid_amount, color)
    @size = size.to_i
    @contents = contents
    @liquid_amount = liquid_amount.to_i
    @color = color
  end

  def pour_out(amount)
    if amount.to_i <= @liquid_amount
      @liquid_amount -= amount.to_i
      p "The cup now has #{@liquid_amount} mL of #{@contents}."
    else
      p "The cup does not have that much liquid in it. The cup has #{@liquid_amount} mL of #{@contents} in it."
    end
  end

  def fill_up(amount)
    if amount.to_i <= @size - @liquid_amount 
      @liquid_amount += amount.to_i
      p "The cup now has #{@liquid_amount} mL of #{@contents}."
    else
      @liquid_amount = @size
      p "You poured too much liquid in! The cup has overflowed, but now contains #{@liquid_amount} mL of #{@contents}."
    end
  end

  def ponder_life
    if @size.to_f / @liquid_amount.to_f == 2
      p "Hmm. The cup is half empty. Or is it half full?"
    elsif @size.to_f / @liquid_amount.to_f > 2
      p "How sad. The cup is mostly empty. Or maybe I should appreciate the small amount of liquid it does have."
    else
      p "How exciting. The cup is mostly full. But it is a little empty. Is that a problem?"
    end
  end

end

# DRIVER CODE

# Testing Methods from Release 1

# cup = Cup.new(100, "coffee", 50, "blue")
# p cup.size
# p cup.color
# p cup.liquid_amount
# p cup.contents
# cup.contents = "water"
# p cup.contents
# cup.fill_up(25)
# cup.pour_out(50)
# cup.ponder_life
# cup.fill_up(50)
# cup.ponder_life
# cup.pour_out(25)
# cup.ponder_life
# cup.pour_out(60)
# cup.fill_up(60)
# p cup.liquid_amount

# Release 2

# User Interface

cup_array = []

# Allows user to create as many instances as they would like

user_answer = ""
until user_answer == "no"
  p "Would you like to create a new cup? (yes/no)"
  user_answer = gets.chomp
  until user_answer == "yes" || user_answer == "no"
    p "Please indicate whether or not you'd like to create a new cup with 'yes' or 'no'."
    user_answer = gets.chomp
  end
  break if user_answer == "no"

  # Gets attributes of instance from user

  p "What is the size of the cup in milliliters?"
  size = gets.chomp.to_i
  p "What type of liquid is in the cup?"
  contents = gets.chomp
  p "How much of the liquid is in the cup in milliliters?"
  liquid_amount = gets.chomp.to_i
    until liquid_amount < size
      p "Please indicate an amount of liquid less than or equal to the size of the cup."
      liquid_amount = gets.chomp.to_i
    end
  p "What color is the cup?"
  color = gets.chomp

  # Stores attributes as instance of class in array

  cup = Cup.new(size, contents, liquid_amount, color)
  cup_array << cup
end

# Prints confirmation of all instances created and their attributes

cup_array.each do |cup|
  p "Cup #{cup_array.index(cup)} size: #{cup.size}"
  p "Cup #{cup_array.index(cup)} contents: #{cup.contents}"
  p "Cup #{cup_array.index(cup)} amount of liquid: #{cup.liquid_amount}"
  p "Cup #{cup_array.index(cup)} color: #{cup.color}"
end