# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.


require_relative 'state_data'

class VirusPredictor

  # Initialze an instance of class VirusPredictor.  Set the instance variables @state, 
  # @population and @population_density
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Call the private methods predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # Make all subsequent methods visible only within the class declaration.
  # They can't be called by instance.method
  private

  # Use if/elsif to apply the appropriate multiplier.
  # Round the resulting float down to the nearest integer.
  # Print the relevant portion (1st half) of the output.
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    multiplier = (@population_density.floor/50) * 0.1

    if multiplier > 0.4
      multiplier = 0.4
    elsif multiplier == 0
      multiplier = 0.05
    end
    
    print "#{@state} will lose #{(@population * multiplier).floor} people in this outbreak"

  end

  # Calculate the speed of spred based on population density.
  # Print the relevant portion (2nd half) of the output.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    if @population_density > 200
      speed = 0.5
    else
      speed = 2.5 - (@population_density.floor/50 * 0.5)
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do |state, pop_data|
  new_state = VirusPredictor.new(state, pop_data[:population_density], pop_data[:population])
  new_state.virus_effects
 end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The outer hash uses strings as keys so data is assigned to the key/valus pairs using the hash rocket syntax (key => value).
# The inner hash uses symbols as keys so a shortcut can be used to assign the values (key: value).

# What does require_relative do? How is it different from require?
# EXPLANATION OF require_relative
# require_relative 'file_name' basically pastes the code from 'file_name' in to
# the current file.  require_relative takes a path relative to the current
# file where require takes an absolute path.

# What are some ways to iterate through a hash?
# Some of the methods available include #each, #each_key, #each_pair, #each_value

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# I wouldn't expect to see an instance variable passed as an argument to an instance method since they share the same scope.

# What concept did you most solidify in this challenge?
# I encountered a few new things like #floor and private.  I also feel more comfortable with the idea of "hashy hashes".