# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true


# Modify home page to take a query parameter to search student database
# by id, name, campus, or age.
get '/' do
  if !(query = params.to_a).empty?
    students = db.execute("SELECT * FROM students WHERE #{query[0][0]} = ?", [query[0][1]])
    students.to_s
  end
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student
get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Add contact route that displays an address
get '/contact' do
  "P.O. Box 91, Bug Tussle OK 74554"
end

# Add great job route that takes a person's name as a query parameter.
get '/great_job' do
  name = params[:name]
  name ? "Good job, #{name}!" : "Good job!"
end

# Add a route that uses route parameters to add two numbers
# and respond with the result.
get '/:number_1/plus/:number_2' do
  (params[:number_1].to_i + params[:number_2].to_i).to_s
end



