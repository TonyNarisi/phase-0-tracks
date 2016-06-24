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

# User will be able to:
#   - Add a record to collection
#   - Update a record's rating
#   - Update a record's quality
#   - Delete a record from collection
#   - View record collection

def add_record(db, artist_name, album_name, rating, quality)
  db.execute("INSERT INTO record_collection (artist_name, album_name, rating, quality) VALUES (?, ?, ?, ?)", [artist_name, album_name, rating, quality])
end

def update_rating(db, album_name, new_rating)
  db.execute("UPDATE record_collection SET rating=? WHERE album_name=?", [new_rating, album_name])
end

def update_quality(db, album_name, new_quality)
  db.execute("UPDATE record_collection SET quality=? WHERE album_name=?", [new_quality, album_name])
end

# Test Code
add_record(db, "Julia Brown", "An Abundance of Strawberries", 10, "Excellent")
update_rating(db, "An Abundance of Strawberries", 9)
update_quality(db, "An Abundance of Strawberries", "Very Good")

# User interface will ask user what they would like to do
