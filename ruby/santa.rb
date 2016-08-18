#Define Santa class
#Include #speak, #eat_milk_and cookies, #initialize
class Santa

  def speak
    puts "Ho, ho, ho!  Haaaappy Holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Reindeer ranking: #{@reindeer_ranking}"
    puts "Age: #{@age}"
  end
 
  # Getter Methods
  #def age
  #  @age
  #end
  attr_accessor :age

  #def ethnicity
  #  @ethnicity
  #end
  attr_reader :ethnicity

  # Setter Methods
  def celebrate_birthday
    @age +=1
  end

  def get_mad_at(reindeer_name)
    if idx = @reindeer_ranking.index(reindeer_name)
      @reindeer_ranking.delete_at(idx)
      @reindeer_ranking << reindeer_name
    end
  end

  #def gender=(new_gender)
  #  @gender = new_gender
  #end
  attr_accessor :gender

end


bad_santa = Santa.new("male", "Lithuanian")
bad_santa.speak
bad_santa.eat_milk_and_cookies("oreo")

puts "Bad santa is #{bad_santa.age} years old."
puts "Bad santa is #{bad_santa.ethnicity}."

bad_santa.celebrate_birthday
puts "Bad santa is #{bad_santa.age} years old."

bad_santa.get_mad_at("Vixen")
bad_santa.gender ="undecided"
bad_santa.about


santas = []
genders = ["female", "undecided", "depends on the day"]
ethnicities = ["white", "Citizen of the World", "Fijian"]

genders.length.times {|idx|santas << Santa.new(genders[idx], ethnicities[idx])}
santas.each {|santa| santa.about}


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
1000.times do |santa|
  gender = example_genders[rand(example_genders.length)]
  ethnicity = example_ethnicities[rand(example_ethnicities.length)]
  santa = Santa.new(gender, ethnicity)
  santa.age = rand(141)
  puts "Age: #{santa.age}, Ethnicity: #{santa.ethnicity}, Gender: #{santa.gender}"
end
