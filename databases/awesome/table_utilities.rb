# Display the locations table and get an area id key
def get_area_id(db)

  # Show contents of the location table
  puts "Here are the available areas:"

  locations = db.execute("SELECT * FROM locations")
  locations.each {|row| puts "#{row[0]}" + ": " + "#{row[1]}"}

  puts "Please select an area by number:"
  area_id = gets.chomp.to_i

end


# Prompt user for a name.  If name isn't in the clients table, add it
# Return client id (primary key)
def get_client_info(db)

  puts "Please enter your name:"
  name = gets.chomp

  # If no record, prompt for remaining information.
  if (client = db.execute("SELECT * FROM clients WHERE name = '#{name}'")).empty?
    
    puts "Please enter your maximum price:"
    max_price = gets.chomp.to_i

    area_id = get_area_id(db)

    # Add the record and retrieve the primary key
    db.execute("INSERT INTO clients (name, max_price, area_id) VALUES (?, ?, ?)", [name, max_price, area_id])
    client = db.execute("SELECT * FROM clients WHERE name = '#{name}'")
  end

  client[0][0]
end

# Allow a seller to populate houses table with address, price and area
# Display locations table, prompt for area input by key
def update_houses(db)

  puts "Please enter the address of the home you wish to sell:"
  address = gets.chomp.upcase

  # If there's no existing record, prompt for remaining information.
  if (house = db.execute("SELECT * FROM houses WHERE address = '#{address}'")).empty?
    puts "Please enter the price:"
    price = gets.chomp.to_i

    area_id = get_area_id(db)
  end 

end

# Prompt the user for a new location.  If not already in the table, add it.
def update_locations(db)

  puts "Please enter a new location:"
  area = gets.chomp.upcase

  if db.execute("SELECT * FROM locations WHERE area = '#{area}'").empty?
    db.execute("INSERT INTO locations (area) VALUES (?)", [area])
  else
    puts "That location is already in the table."
  end

end

