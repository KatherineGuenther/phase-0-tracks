def get_next(letter, str)
	#For a letter in a given string, return the next letter in the string or wrap around if letter is last in string.
	#Case sensitive

	if letter == str[-1]
		str[0]
	else
		idx = str.index(letter)
		str[idx + 1]
	end
end


def fake_name(name)
	#Define variables vowels = "aeiou" and consonants = "bcdf..."
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	result = ""

	#Swap first and last names.  Convert string to array of words, then reverse and join.
	names = name.split(" ")
	names.reverse!
	name = names.join(" ")

	#Change any vowel to the next vowel and any consonant to the next consonant.
	#Step through string using #each_char and test each letter for inclusion in vowels or consonants.
	#If vowel, change letter to next in vowels string. If consonant, change letter to next in consonant string.  Handle case.
	name. each_char {|letter|
		if vowels.include?(letter.downcase)
			result += get_next(letter.downcase, vowels)	
		elsif consonants.include?(letter.downcase)
			result += get_next(letter.downcase, consonants)
		else
			result += letter
		end
	}

	result
end

p fake_name("Felicia Torres")
p fake_name("Zoro Smith")