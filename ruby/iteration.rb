# Release 0
def print_name 
  puts "This is the main method before the block"
  yield
  puts "This is the main method after the block"
end

print_name {puts "This is the block code"}

# Release 1
books = {
  :'Animal Farm' => "George Orwell" ,
  :'Harry Potter' => "J K Rowling" ,
  :'Lord of the Rings' => "JRR Tolkien"
}

movies = ["Star Wars","Star Trek","Guardians of the Galaxy"]

books.each {|book, author| puts "#{author} wrote #{book}"}

movies.each{|movie| puts "A movie could be named #{movie}"}

print movies
movies.map!{|movie| movie.reverse}
print movies

# Release 2
example_arr = [10, 20, 4, 6, 79, 65, 80]

example_hash = {
  a: 1,
  b: 2,
  c: 3,
  d: 4,
  e: 5
}

# Question 1
p example_arr.delete_if{ |number| number < 50}
p example_hash.delete_if{|letter, number| number > 2}

example_arr = [10, 20, 4, 6, 79, 65, 80]

example_hash = {
  a: 1,
  b: 2,
  c: 3,
  d: 4,
  e: 5
}

# Question 2
p example_arr.keep_if{ |number| number < 50}
p example_hash.keep_if{|letter, number| number > 2}

example_arr = [10, 20, 4, 6, 79, 65, 80]

example_hash = {
  a: 1,
  b: 2,
  c: 3,
  d: 4,
  e: 5
}

# Question 3
p example_arr.select {|number| number.even?}
p example_hash.select {|letter, number| number.even?}

# Question 4
p example_arr.drop_while {|number| number < 15 }
p example_hash.drop_while { |letter, number| number.odd? }