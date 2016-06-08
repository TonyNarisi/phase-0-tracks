class Santa

  attr_reader :age, :ethnicity

  attr_accessor :gender

  def initialize(gender, ethnicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

end

# DRIVER CODE

# claude = Santa.new
# claude.speak
# claude.eat_milk_and_cookies("chocolate chip cookie")

santas = []
santa_genders = ["transgender", "androgynous", "gender questioning", "female", "pangender"]
santa_ethnicities = ["Native American", "Pacific Islander", "African American", "Asian", "Latino"]
santa_genders.length.times { |i| santas << Santa.new(santa_genders[i], santa_ethnicities[i]) }

p "#{santas[0].age}"
santas[0].celebrate_birthday
p "#{santas[0].age}"
p "#{santas[0].ethnicity}"
santas[0].gender = "androgynous"
santas[0].get_mad_at("Dasher")

p santas
