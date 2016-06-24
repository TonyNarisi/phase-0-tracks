# Record Collection Manager Program

# Require gems
require 'sqlite3'

# Create SQLite3 database
db = SQLite3::Database.new("records.db")

# Create a record_collection table if one does not exist
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS record_collection(
    id INTEGER PRIMARY KEY,
    artist_name VARCHAR(255),
    album_name VARCHAR(255),
    rating INT,
    quality VARCHAR(255)
    )
  SQL

db.execute(create_table_cmd)