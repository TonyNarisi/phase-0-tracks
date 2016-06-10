module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "! Heck yes!"
  end
end

# DRIVER CODE

p Shout.yell_angrily("I can't believe that")
p Shout.yell_happily("I can't believe that")