def vampire_check()
	result = "Results inconclusive."

	puts "How many prospective employees will you be processing today?"
	num_employees = gets.chomp.to_i
	idx = 0

	while idx < num_employees
		response = nil

		puts "What is your name?"
		name = gets.chomp

		puts "How old are you?"
		age = gets.chomp.to_i

		puts "What year where you born?"
		year_born = gets.chomp.to_i


		age_right = year_born + age == Time.now.year
		garlic = yes_or_no("Our company cafeteria serves garlic bread. Should we order some for you?")
		insurance = yes_or_no("Would you like to enroll in the company’s health insurance?")

		if age_right && (garlic || insurance)
			result = "Probably not a vampire."
		end

		if !age_right  && (!garlic || !insurance)
			result = "Probably a vampire."
		end

		if !age_right && !garlic && !insurance
			result = "Almost certainly a vampire."
		end

		if name == "Drake Cula" || name == "Tu Fang"
			result = "Definitely a vampire."
		end

		until response == "sunshine" || response == "done"
			puts "Please name one thing you are allergic to.  Enter done to quit."
			response = gets.chomp.downcase
		end

		if response == "sunshine"
			result = "Probably a vampire."
		end

		puts result
		idx +=1
	end

	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 
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