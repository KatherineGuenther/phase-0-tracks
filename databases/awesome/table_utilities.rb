# Prompt user for a name.  If name isn't in the clients table, add it
# Return client id (primary key)
def get_client_info(db)

  puts "Please enter your name:"
  name = gets.chomp

  if (client = db.execute("SELECT * FROM clients WHERE name = '#{name}'")).empty?
    
    # If no record, prompt for remaining information.
    puts "Please enter your maximum price:"
    max_price = gets.chomp.to_i

    # Show contents of the location table
    puts "Here are the available areas."

    puts "Please select an area of interest by number:"
    area_id = gets.chomp.to_i

    # Add the record and retrieve the primary key
    db.execute("INSERT INTO clients (name, max_price, area_id) VALUES (?, ?, ?)", [name, max_price, area_id])
    client = db.execute("SELECT * FROM clients WHERE name = '#{name}'")
  end

  client[0][0]
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

