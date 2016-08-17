class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times {puts "Woof"}
  end

  def roll_over
    puts "rolls over"
  end

  def dog_years(years)
    years*7
  end

  def poop
    puts "Let me out!"
  end
end

class Programmer

  def initialize
    puts "Initializing new programmer instance..."
  end

  def pull_hair_out
    puts "Argghh!"
  end

  def hours_in_front_of_computer(hours)
    puts "I spent #{hours} at the computer this week!"
  end
end

Max = Puppy.new
Max.fetch("ball")
Max.speak(5)
Max.roll_over
puts Max.dog_years(5)
Max.poop

Fernando = Programmer.new
Fernando.pull_hair_out
Fernando.hours_in_front_of_computer(40)

programmers = []
50.times {programmers << Programmer.new}
programmers.each do | poor_guy|
  poor_guy.pull_hair_out
  poor_guy.hours_in_front_of_computer(40)
end

