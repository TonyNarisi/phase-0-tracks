# Virus Predictor

# I worked on this challenge [with Neal Peters].
# We spent [1] hour on this challenge.

# EXPLANATION OF require_relative
# Require_relative gives access to the other file, as if it was in the same file.
require_relative 'state_data'

class VirusPredictor

#   Runs whenever a new instance of VirusPredictor is created. Allows the new instance to be assigned a state of origin, population density, and population that are accessible by other methods in class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#   Runs the predicted_deaths and speed_of_spread methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
#   Uses the population density and population to calculate the number of deaths in the state, then prints a message to the user of a prediction of how many deaths would occur in the state from the outbreak.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#   Uses the population density to predict the number of months in which the predicted deaths would occur, and prints this information to the console.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Pseudo-code

# Iterate through STATE_DATA hash
#   For each state, create a new VirusPredictor instance using the nested values given in the hash
#   Run the virus_effects method on each instance that has been created

STATE_DATA.each_key do |state|
  state_model = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state_model.virus_effects
end


#=======================================================================
# Reflection Section

# The larger hash uses the "hash rocket" to point its keys towards their values, and
# the keys are strings. The smaller hashes (the values for the states' keys) use
# colons to connect the keys to the values. The keys in this smaller hash are symbols
# instead of strings.

# "require_relative" gives access to the other file, as if it was in the same file. 
# It differs from "require" in that it is a shorter way of accessing a file than
# the syntax for "require". Additionally, "require" is often used to access a library.

# The methods "each", "each_key", "each_value", and "each_pair" can be used to iterate
# through a hash. "each" and "each_pair" will iterate through and take in the key and
# the value as parameters. "each_key" will iterate through only the keys in the hash,
# while "each_value" will iterate through only the values in the hash.

# The scope of the instance variables stood out to me when refactoring the virus_effects method.

# This challenge helped me to strengthen my understanding of classes and of the scope
# of variables. Learning about private methods was interesting to me, and the scope of
# the instance variables being explicitly shown through refactoring the virus_effects
# method was very helpful to see.
