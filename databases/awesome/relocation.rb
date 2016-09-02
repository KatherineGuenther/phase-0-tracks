require "sqlite3"

# Make a new database
db = SQLite3::Database.new("relocation.db")

# If one doesn't alreay exist, create a locations table with id and area
create_locations_table = <<-SQL
  CREATE TABLE IF NOT EXISTS locations(
    id INTEGER PRIMARY KEY,
    area VARCHAR(255)
  )
SQL

db.execute(create_locations_table)

# Allow a client to populate client table with name, email, max price and desired area.
# Display locations table, prompt for area input by key

# Allow a seller to populate houses table with price, address, area
# Display locations table, prompt for area input by key

# Define match 

# Display matching listings

