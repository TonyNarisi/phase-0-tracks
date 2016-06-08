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

# DRIVER CODE

george = Puppy.new

george.fetch("stick")
george.speak(3)
george.roll_over
george.dog_years(3)
george.shake_hands(2)