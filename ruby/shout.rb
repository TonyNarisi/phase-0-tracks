# Release 1

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "! Heck yes!"
#   end
# end

# DRIVER CODE

# p Shout.yell_angrily("I can't believe that")
# p Shout.yell_happily("I can't believe that")

# Release 3

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "! Heck yes!"
  end
end

class PersonDriving
  include Shout
end

class SportsFan
  include Shout
end

# DRIVER CODE

driver = PersonDriving.new
fan = SportsFan.new

p driver.yell_angrily("Excuse me, sir, I believe you cut me off")
p driver.yell_happily("Oh boy, it looks like traffic is thinning")
p fan.yell_angrily("Oh man, I wanted the other team to win")
p fan.yell_happily("The team I like has more points than the other team")