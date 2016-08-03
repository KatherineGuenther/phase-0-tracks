def vampire_check()

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year where you born?"
	year = gets.chomp.to_i

	garlic = yes_or_no("Our company cafeteria serves garlic bread. Should we order some for you?")
	insurance = yes_or_no("Would you like to enroll in the company’s health insurance?")
end


def yes_or_no(question)

	valid_input = false
	question = question + "(y/n)"

	until valid_input	
		puts question
		answer = gets.chomp
		if answer == 'y'
			valid_input = true
			result = true
		elsif answer == 'n'
			valid_input = true
			result = false
		else
			puts "Please answer 'y' or 'n'."
		end
	end

	result
end

vampire_check