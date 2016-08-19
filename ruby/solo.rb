# Define class LibraryBook
class LibraryBook

  # Add method to initialize new instance with title and due date
  # Add attributes for read yet and rating
  def initialize(title, days_until_due)
    @title = title
    @due_date = (Time.now + (60 * 60 * 24 * days_until_due))
    read_yet = false
    rating = nil
  end

  # Add methods to get title and due date
  attr_reader :title
  attr_reader :due_date

  # Add method to get and set read yet and rating
  attr_accessor :read_yet
  attr_accessor :rating

  # Add method to determine if overdue
  def overdue?
    Time.now > @due_date
  end

end




book1 = LibraryBook.new("Learn to Program", 3)
p book1
p book1.title
p book1.due_date

book1.read_yet = true
book1.rating = "***"
p book1.overdue?
p book1