#Define Santa class
#Include #speak, #eat_milk_and cookies, #initialize
class Santa

	def speak
		puts "Ho, ho, ho!  Haaaappy Holidays!"

	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize
		puts "Initializing Santa instance..."
	end

end

bad_santa = Santa.new
bad_santa.speak
bad_santa.eat_milk_and_cookies("oreo")
