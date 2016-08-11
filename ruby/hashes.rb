#Create an empty hash initialized to default (nil)
client = {}

#Print a welcome message
puts "Welcome to Tacme Designs"

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
#puts "Do you like plaid (y/n)"

#Covert input to boolean and assign to :likes_plaid
#answer = gets.chomp
#client.[likes_plaid] = yes_or_no(answer)

#Prompt user for payment method

#Covert to boolean and assign to :cash

#Print hash to screen

#Ask user if any one key needs to be updated
#If input isn't "done",  prompt for new value and assign to appropriate key.  Print updated version of the hash.

