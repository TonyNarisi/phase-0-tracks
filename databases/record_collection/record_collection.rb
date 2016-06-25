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
#     - New records will be given a primary key ID, an artist name, an album name, a rating, and a quality
#   - Update a record's rating
#   - Update a record's quality
#   - Delete a record from collection
#   - View entire record collection
#   - View collection based on specific criteria
#     - User can view all records by a specific artist, all records above, below, or equal to a certain rating, or all records with a specific quality

def add_record(db, artist_name, album_name, rating, quality)
  db.execute("INSERT INTO record_collection (artist_name, album_name, rating, quality) VALUES (?, ?, ?, ?)", [artist_name, album_name, rating, quality])
end

def update_rating(db, id, new_rating)
  db.execute("UPDATE record_collection SET rating=? WHERE id=?", [new_rating, id])
end

def update_quality(db, id, new_quality)
  db.execute("UPDATE record_collection SET quality=? WHERE id=?", [new_quality, id])
end

def delete_record(db, id)
  db.execute("DELETE FROM record_collection WHERE id=?", [id])
end

def view_collection_all(db)
  records = db.execute("SELECT * FROM record_collection")
  records.each do |record|
    puts "#{record[2]} by #{record[1]}, Rating: #{record[3]}, Quality: #{record[4]}, ID: #{record[0]}"
  end
end

# This statement was returning errors when using placeholders for category and operator. Re-visit after finishing program to troubleshoot.
def view_collection_select(db, category, operator, value)
  records = db.execute("SELECT * FROM record_collection WHERE #{category} #{operator} ?", [value])
  records.each do |record|
    puts "#{record[2]} by #{record[1]}, Rating: #{record[3]}, Quality: #{record[4]}, ID: #{record[0]}"
  end
end

# This method is for use in the user interface, to increase DRYness.

def id_bank_generator(db)
  id_bank = []
  records = db.execute("SELECT * FROM record_collection")
  records.each {|record| id_bank << record[0]}
  id_bank
end

# USER INTERFACE

# The user interface works on a loop, that is broken by the user entering menu option 7 on the main menu.

continue_loop = true
until continue_loop == false

  # User interface will ask user what they would like to do, and check for errors in their answer

  puts "What would you like to do today? Please choose an option listed below by number.
    1. Add record to collection
    2. Update a record's rating
    3. Update a record's quality
    4. Delete record from collection
    5. View entire collection
    6. View specific selection of collection
    7. Exit"
  menu_option = gets.chomp.to_i
  break if menu_option == 7
  until menu_option > 0 && menu_option < 7
    puts "Please choose a valid option from the menu, using only the number listed."
    menu_option = gets.chomp.to_i
  end

  # Use an if statement to guide user's next steps.

  if menu_option == 1
    puts "What is the name of the album you would like to add to the collection?"
      album_name = gets.chomp
    puts "What is the name of the artist for this album?"
      artist_name = gets.chomp
    puts "What is your rating for this album?"
      rating = gets.chomp.to_i
    puts "What quality is this record?"
      quality = gets.chomp
    add_record(db, artist_name, album_name, rating, quality)
    puts "Album successfully added to collection!"

  # This option, and the two below it, first show the user the entire collection, so he or she can easily reference the ID numbers.
  elsif menu_option == 2
    view_collection_all(db)
    puts "What is the ID of the album whose rating you would like to edit?"
    id = gets.chomp.to_i
    until id_bank_generator(db).include?(id)
      puts "Please select a valid ID number."
      id = gets.chomp.to_i    
    end
    puts "What is the new rating you would like to give this album?"
    new_rating = gets.chomp.to_i
    update_rating(db, id, new_rating)
    puts "Rating successfully updated!"

  elsif menu_option == 3
    view_collection_all(db)
    puts "What is the ID of the album whose quality you would like to update?"
    id = gets.chomp.to_i
    until id_bank_generator(db).include?(id)
      puts "Please select a valid ID number."
      id = gets.chomp.to_i
    end
    puts "What is the quality you would like to give this album?"
    new_quality = gets.chomp
    update_quality(db, id, new_quality)
    puts "Quality successfully updated!"

  elsif menu_option == 4
    view_collection_all(db)
    puts "What is the ID of the album you would like to delete?"
    id = gets.chomp.to_i
    until id_bank_generator(db).include?(id)
      puts "Please select a valid ID number."
      id = gets.chomp.to_i
    end
    delete_record(db, id)
    puts "Record successfully deleted!"

  elsif menu_option == 5
    view_collection_all(db)

  else
    puts "What category would you like to limit your search by?
      1. Artist name
      2. Rating
      3. Quality"
    menu_option = gets.chomp.to_i
    until menu_option > 0 && menu_option < 4
      puts "Please select a valid menu option."
      menu_option = gets.chomp.to_i
    end
    if menu_option == 1
      puts "What artist name would you like to limit your search to?"
      artist_name_search = gets.chomp
      view_collection_select(db, "artist_name", "=", artist_name_search)
    elsif menu_option == 2
      puts "Would you like to search for ratings that are (1) greater than, (2) less than, or (3) equal to a certain number?"
      operator_choice = gets.chomp.to_i
      until operator_choice > 0 && operator_choice < 4
        puts "Please select a valid menu option."
        operator_choice = gets.chomp.to_i
      end
      if operator_choice == 1
        operator = ">"
      elsif operator_choice == 2
        operator = "<"
      else
        operator = "="
      end
      puts "What rating would you like to use for your search?"
      rating_choice = gets.chomp.to_i
      view_collection_select(db, "rating", operator, rating_choice)
    else
      puts "What quality would you like to limit your search to?"
      quality_search = gets.chomp
      view_collection_select(db, "quality", "=", quality_search)
    end
  end

end