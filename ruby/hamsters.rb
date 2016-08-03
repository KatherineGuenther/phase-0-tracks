#Allow user to skip estimated age
age = nil

#Gather user input
puts "What is your hamster's name?"
name = gets.chomp

puts "What is your hamster's volume level?(1 to 10)"
volume_level = gets.chomp.to_i

puts "What's your hamster's fur color?"
color = gets.chomp

puts "Is your hamster a good candidate for adoption?(y/n)"
adoption = gets.chomp

#Only allows "y" or "n" as input
if adoption == "y"
	adoptable = true
elsif adoption == "n"
	adoptable = false
else
	puts "invalid input.  Please try again."
end

puts "What is the estimated age of your hamster?"
age = gets.chomp

#Output data
puts "Hamster's name: #{name}"
puts "Hamster's volume level: #{volume_level}"
puts "Hamster's fur color: #{color}"
puts "Good candidate for adoption: #{adoptable}"
puts "Hamster's estimated age: #{age}"