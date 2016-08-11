#Create an empty hash initialized to default (nil)
client = {}

#Print a welcome message
puts "Welcome to Acme Designs"

#Prompt user for name
puts "Please enter your name:"

#Assign input to :name
client[:name] = gets.chomp

#Prompt user for age
puts "Please enter your age:"

#Convert input to integer and assign to :age
client[:age] = gets.chomp.to_i

#Prompt user for number of children
puts "Please enter the number of children you have:"

#Convert input to integer and assign to :children
client[:children] = gets.chomp.to_i

#Prompt user for decor theme
puts "Please enter your preferred theme:"

#Assign input to :theme
client[:theme] = gets.chomp

#Prompt user for :likes_plaid
puts "Do you like plaid (y/n)?"

#Covert input to boolean and assign to :likes_plaid.  Anything but "y" is false.
answer = gets.chomp
client[:likes_plaid] = answer == "y"

#Prompt user for payment method
puts "Will you be paying cash (y/n)?"

#Covert to boolean and assign to :cash.  Anything but "y" is false.
answer = gets.chomp
client[:cash] = answer == "y"

#Print hash to screen
puts client

#Ask user if any one key needs to be updated
puts "Which question would you like to answer again?"
answer = gets.chomp

#If input isn't "none",  prompt for new value and assign to appropriate key.  Print updated version of the hash.
if answer != "none"
	puts "Please enter a new response for #{answer}:"
	if answer == "name" || answer == "theme"
		client[answer.to_sym] = gets.chomp
	elsif answer == "age" || "answer" == "children"
		client[answer.to_sym] = gets.chomp.to_i
	else
		client[answer.to_sym] = gets.chomp == "y"
	end

	puts client
end






