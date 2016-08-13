def next_in_string(letter, str)
	#For a letter in a given string, return the next letter in the string or wrap around if letter is last in string.
	#Handle case

	if letter.downcase == str[-1]
		new_letter = str[0]
	else
		new_letter = str[str.index(letter.downcase) + 1]
	end

	if letter == letter.downcase
		new_letter
	else
		new_letter.upcase
	end
end


def make_alias(name)
	#Define variables vowels = "aeiou" and consonants = "bcdf..."
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"

	#Swap first and last names.  Convert string to array of words, then reverse and join.
	name_array = name.split(" ")
	name_array.reverse!
	name = name_array.join(" ")

	#Change any vowel to the next vowel and any consonant to the next consonant. Leave spaces alone.
	#Convert string to array of letters to allow use of #map.  Test each letter for inclusion in vowels or consonants.
	#If vowel, change letter to next in vowels string. If consonant, change letter to next in consonant string.
	name_array = name.split("")
	name_array.map! do |letter|
		if vowels.include?(letter.downcase)
			next_in_string(letter, vowels)	
		elsif consonants.include?(letter.downcase)
			next_in_string(letter, consonants)
		else
			letter
		end
	end
	
	name_array.join("")
end

name = ""

until name == "quit"
	puts "What is your real name?"
	name = gets.chomp
	if name != "" && name != "quit"
		fake_name = make_alias(name)
		puts "Your alias is #{fake_name}."
	end
end
