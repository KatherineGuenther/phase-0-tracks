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

end


bad_santa = Santa.new("male", "Lithuanian")
p bad_santa
bad_santa.speak
bad_santa.eat_milk_and_cookies("oreo")

santas = []
genders = ["female", "undecided", "depends on the day"]
ethnicities = ["white", "Citizen of the World", "Fijian"]

genders.length.times {|idx|santas << Santa.new(genders[idx], ethnicities[idx])}
santas.each {|santa| santa.about}

