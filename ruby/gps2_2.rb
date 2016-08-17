# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Declare an empty hash
  # SPLIT the string on spaces into an array
  # Iterate through the array and set each item as a hash key
  # set default quantity to 1
  # print the list to the console
# output: hash with items as keys and quantities set to 1
def create_list(string)
  list = {}

  string.split.each do |item|
    list[item] = 1
  end

  print_list(list)

  list
end


# Method to add an item to a list
# input: list, item name and optional quantity
# steps: add a new key/value pair
# output: new list
def add_item(list, item_name, quantity=1)
  list[item_name] = quantity

  list
end


# Method to remove an item from the list
# input: list, item to be removed
# steps:Check to see that item is in list, then delete corresponding key.  Print error message if item isn't found.
# output: new list
def remove_item(list, item_name)
  if list.has_key?(item_name)
    list.delete(item_name)
  else
    puts "Item not found"
  end

  list
end


# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: Check to see that item is in list, set new quantity.  Print error message if item isn't found.
# output: new list with new quantity
def update_quantity(list, item_name, new_quantity)
  if list.has_key?(item_name)
    list[item_name] = new_quantity
  else
    puts "Item not found"
  end

  list
end


# Method to print a list and make it look pretty
# input: list
# steps: iterate through the list and print each item with quantity
# output: to console, pretty list
def print_list(list)
  puts "Katherine and Kimberly's grocery list:"
  list.each{|item, quantity|puts "#{item}: #{quantity} qty"}
end


# TEST CODE
grocery_list = create_list("carrots apples cereal pizza")

puts add_item(grocery_list, "cookies", 10)

puts remove_item(grocery_list, "carrots")

puts update_quantity(grocery_list, "pizza", 20)

print_list(grocery_list)

# REFLECT
# What did you learn about pseudocode from working on this challenge?
# It definitely paid off to spend the time doing a thorough job on
# the pseudocoding.  By the time we got to the actual coding, the
# methods practically wrote themselves.
#
# What are the tradeoffs of using arrays and hashes for this challenge?
# We didn't even consider an array since we were storing a collection
# of key/value pairs.  We could have made it work with an array or 
# arrays, but it would have been clumsy!
#
# What does a method return?
# A method returns the last expression evaluated.  This can be done
# either implicitly or explicitly be use of the keyword return.
#
# What kind of things can you pass into methods as arguments?
# Any primitive data types, data structures or even other methods.
#
# How can you pass information between methods?
# On the input side, you can pass information between methods via arguments.
# On the ooutput side, you can pass information by using the return value.
# With classes, you can use an instance variable to share information between
# instance methods.
#
# What concepts were solidified in this challenge, and what concepts are still confusing?
# I learned a few new tricks.  Probably the most interesting was the idea of using 
# default arguments.  The most confusing part of a pairing session is still the
# actual art of pairing.


