class Santa

  def initialize
    p "Initializing Santa instance..."
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}!"
  end

end

# DRIVER CODE

claude = Santa.new
claude.speak
claude.eat_milk_and_cookies("chocolate chip cookie")