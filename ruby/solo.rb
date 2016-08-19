# Define class LibraryBook
class LibraryBook

  # Add method to initialize new instance with title and due date
  # Add attributes for read yet, rating and overdue
  def initialize(title, days_until_due)
    @title = title
    @due_date = (Time.now + (60 * 60 * 24 * days_until_due))
    @overdue = false
    @read_yet = false
    @rating = nil
  end

  # Add methods to get title and due date
  attr_reader :title
  attr_reader :due_date

  # Add methods to get and set read yet and rating
  attr_accessor :read_yet
  attr_accessor :rating

  # Add method to determine if overdue
  def overdue?
    @overdue = Time.now > @due_date
  end

  def about
    puts "Title: #{@title}"
    puts "Due Date: #{@due_date}"
    puts "Read Yet: #{@read_yet}"
    puts "Rating: #{@rating}"
    puts "Overdue?: #{@overdue}"
  end

end


books = []

while true
  puts "Please enter the title of the library book you'd like to track (or 'quit' to exit):"

  title = gets.chomp
  if title == "quit"
    break
  end

  puts "Please enter the number of days until the book is due:"
  days = gets.chomp.to_i

  book = LibraryBook.new(title, days)

  puts "Have you read the book yet ('yes' or 'no')?"
  book.read_yet = (gets.chomp == "yes")
  if book.read_yet
    puts "Please give it rating of 1 to 5 stars(* to *****):"
    book.rating = gets.chomp
  end

  book.overdue?
  
  books << book
end

books.each {|book| book.about}


