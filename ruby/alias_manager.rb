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
	fake_name = ""

	#Swap first and last names.  Convert string to array of words, then reverse and join.
	names = name.split(" ")
	names.reverse!
	name = names.join(" ")

	#Change any vowel to the next vowel and any consonant to the next consonant. Leave spaces alone.
	#Step through string using #each_char and test each letter for inclusion in vowels or consonants.
	#If vowel, change letter to next in vowels string. If consonant, change letter to next in consonant string.
	name. each_char {|letter|
		if vowels.include?(letter.downcase)
			fake_name += next_in_string(letter, vowels)	
		elsif consonants.include?(letter.downcase)
			fake_name += next_in_string(letter, consonants)
		else
			fake_name += letter
		end
	}

	fake_name
end

p make_alias("Felicia Torres")
p make_alias("Zoro Smith")