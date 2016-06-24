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
#     - Program should check to see if a record is already in the collection before adding it, and provide an error message if it is
#   - Update a record's rating
#     - Program should check to ensure the record is in the collection, and provide an error message if it is not
#   - Update a record's quality
#     - Program should check to ensure the record is in the collection, and provide an error message if it is not
#   - Delete a record from collection
#     - Program should check to ensure the record is in the collection, and provide an error message if it is not
#   - View record collection
#     - Program should ask user if they want to view entire collection, or if they want to view based on specific criteria
#       - User can view all records by a specific artist, all records above or below a certain rating, or all records with a specific quality

def add_record(db, artist_name, album_name, rating, quality)
  db.execute("INSERT INTO record_collection (artist_name, album_name, rating, quality) VALUES (?, ?, ?, ?)", [artist_name, album_name, rating, quality])
end

def update_rating(db, album_name, new_rating)
  db.execute("UPDATE record_collection SET rating=? WHERE album_name=?", [new_rating, album_name])
end

def update_quality(db, album_name, new_quality)
  db.execute("UPDATE record_collection SET quality=? WHERE album_name=?", [new_quality, album_name])
end

def delete_record(db, album_name)
  db.execute("DELETE FROM record_collection WHERE album_name=?", [album_name])
end

def view_collection_all(db)
  records = db.execute("SELECT * FROM record_collection")
  records.each do |record|
    puts "#{record[2]} by #{record[1]}, Rating: #{record[3]}, Quality: #{record[4]}"
  end
end

# Test Code
add_record(db, "Julia Brown", "An Abundance of Strawberries", 10, "Excellent")
update_rating(db, "An Abundance of Strawberries", 9)
update_quality(db, "An Abundance of Strawberries", "Very Good")
view_collection_all(db)
delete_record(db, "An Abundance of Strawberries")

# User interface will ask user what they would like to do
