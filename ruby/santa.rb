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

end

bad_santa = Santa.new("male", "Lithuanian")
p bad_santa
bad_santa.speak
bad_santa.eat_milk_and_cookies("oreo")
