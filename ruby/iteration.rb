def meals
	puts "Good Morning!"
	meal = "breakfast"
	yield(meal)
	puts "I had a smoothie"
end

meals { |meal| puts "What did you have for #{meal}?"}

smoothie = ["banana", "cashew milk", "strawberries"]

common_traits = {"dog" => "loyal", "cat" => "obnoxious", "parrot" => "noisy"}

p smoothie

smoothie.each do |ingredient|
	puts ingredient
end

p smoothie

p common_traits

common_traits.each do |pet, trait|
	puts "A #{pet} is #{trait}."
end

p common_traits

p smoothie

smoothie.map! do |ingredient|
	ingredient.upcase
end

p smoothie

number_array = [1,2,34,44,5,6,54,32,5,3,3,4,5,6,7,8,9]

number_array.delete_if { |number| number >= 34 }
p number_array

number_array.keep_if { |number| number < 10}
p number_array

number_array.select! { |number| number.even?}
p number_array

new_array = number_array.take_while { |number| number < 5 }
p new_array

number_hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven"}
p number_hash

number_hash.delete_if { |digit, word| digit < 2}
p number_hash

number_hash.keep_if { |digit, word| word != "five"}
p number_hash

number_hash.select! { |digit, word| digit.even? }
p number_hash

# Not a perfectly working option, but satisfies the conditional
number_hash.delete_if {|digit, word| !(digit > 5)}
p number_hash