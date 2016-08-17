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

Max = Puppy.new
Max.fetch("ball")
Max.speak(5)
Max.roll_over
puts Max.dog_years(5)
Max.poop