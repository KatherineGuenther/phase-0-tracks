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

# If one doesn't alreay exist, create a client table with id, name, area desired and max price
create_clients_table = <<-SQL
  CREATE TABLE IF NOT EXISTS clients(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    max_price INT,
    area_id INT,
    FOREIGN KEY (area_id) REFERENCES locations(id)
  )
SQL

# If one doesn't alreay exist, create a houses table with id, address, area and price
create_houses_table = <<-SQL
  CREATE TABLE IF NOT EXISTS houses(
    id INTEGER PRIMARY KEY,
    address VARCHAR(255),
    price INT,
    area_id INT,
    FOREIGN KEY (area_id) REFERENCES locations(id)
  )
SQL

db.execute(create_locations_table)
db.execute(create_clients_table)
db.execute(create_houses_table)



# Allow a client to populate client table with name, email, max price and desired area.
# Display locations table, prompt for area input by key

# Allow a seller to populate houses table with price, address, area
# Display locations table, prompt for area input by key

# Define match 

# Display matching listings

