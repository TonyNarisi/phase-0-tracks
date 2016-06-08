# PUPPY CLASS

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    p "Woof!" * num.to_i
  end

  def roll_over
    p "*rolls over*"
  end

  def dog_years(num)
    p num.to_i * 7
  end

  def shake_hands(num)
    p "*puts paw out*" * num.to_i
  end

  def initialize
    p "Initializing new puppy instance..."
  end

end

# PUPPY DRIVER CODE

george = Puppy.new

george.fetch("stick")
george.speak(3)
george.roll_over
george.dog_years(3)
george.shake_hands(2)

# KITTEN CLASS

class Kittens

  def initialize
    p "Intiializing a new kitten"
  end

  def meow(num)
    p "meow" * num.to_i
  end

  def sharpen_nails(furniture, num)
    p "kitten sharpens nails on #{furniture} for #{num.to_i} seconds."
  end

end

# KITTEN DRIVER CODE

kitten1 = Kittens.new
kitten1.meow(7)
kitten1.sharpen_nails("couch", 10)

kitten_collection = [ ]
  index = 0
  until kitten_collection.size > 49
    kitten = Kittens.new  
    kitten_collection << kitten
  index +=1
  end

p kitten_collection

kitten_collection.each do |kitten| 
 kitten.meow(2)
 kitten.sharpen_nails("couch", 3)
 end