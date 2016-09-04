require "sqlite3"
require_relative "table_utilities.rb"


# Make a new database
db = SQLite3::Database.new("relocation.db")

# If one doesn't already exist, create a locations table with id and area
create_locations_table = <<-SQL
  CREATE TABLE IF NOT EXISTS locations(
    id INTEGER PRIMARY KEY,
    area VARCHAR(255)
  )
SQL

# If one doesn't already exist, create a client table with id, name, area desired and max price
create_clients_table = <<-SQL
  CREATE TABLE IF NOT EXISTS clients(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    max_price INT,
    area_id INT,
    FOREIGN KEY (area_id) REFERENCES locations(id)
  )
SQL

# If one doesn't already exist, create a houses table with id, address, area and price
create_houses_table = <<-SQL
  CREATE TABLE IF NOT EXISTS houses(
    id INTEGER PRIMARY KEY,
    address VARCHAR(255),
    price INT,
    area_id INT,
    FOREIGN KEY (area_id) REFERENCES locations(id)
  )
SQL

# Create the tables
db.execute(create_locations_table)
db.execute(create_clients_table)
db.execute(create_houses_table)

# Add a user interface
puts "Are you buying or selling today?  Please enter B or S:"
input = gets.chomp.downcase
client_type = input == "b" ? "buyer": "seller"

if client_type == "buyer"
  client_id = get_client_info(db)
  display_matches(db, client_id)
else
  until input == "quit"
    puts "Which table would you like to update (enter H for houses, L for locations or 'quit' to quit):"
    input = gets.chomp.downcase

    if input == "l"
      update_locations(db)
    elsif input == "h"
      update_houses(db)
    end
  end
end
