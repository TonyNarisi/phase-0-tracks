class Santa

  attr_reader :ethnicity

  attr_accessor :gender, :age

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

# Release 0

# claude = Santa.new
# claude.speak
# claude.eat_milk_and_cookies("chocolate chip cookie")

# Release 1

# santas = []
# santa_genders = ["transgender", "androgynous", "gender questioning", "female", "pangender"]
# santa_ethnicities = ["Native American", "Pacific Islander", "African American", "Asian", "Latino"]

# santa_genders.length.times { |i| santas << Santa.new(santa_genders[i], santa_ethnicities[i]) }

# Release 2

# p "#{santas[0].age}"
# santas[0].celebrate_birthday
# p "#{santas[0].age}"
# p "#{santas[0].ethnicity}"
# santas[0].gender = "androgynous"
# santas[0].get_mad_at("Dasher")

# p santas

# Release 4

santa_genders = ["transgender", "androgynous", "gender questioning", "female", "pangender", "male", "agender", "bigender"]
santa_ethnicities = ["Native American", "Pacific Islander", "African American", "Asian", "Latino", "white", "black", "Japanese-African"]

100.times do
  santa = Santa.new(santa_genders.sample, santa_ethnicities.sample)
  santa.age = rand(140)
  p santa.gender
  p santa.ethnicity
  p santa.age
end