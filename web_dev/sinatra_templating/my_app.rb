# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true
db.execute("CREATE TABLE IF NOT EXISTS campus (campus_name varchar(255))")

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# get '/campus/new' do 
#   erb :campus
# end

get '/students/campus' do 
  erb :campus
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# create new campuses
post '/campus' do 
  db.execute("INSERT INTO campus (campus_name) VALUES (?)",[params['campus']])
  redirect '/'
end
# add static resources