# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!" + " :)"
#   end

# end

# p Shout.yell_angrily("Darn")
# p Shout.yelling_happily("Yippee")

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!" + " :)"
  end

end


class TwelfthMan
  include Shout
end

class Mother
  include Shout
end

excited_fan = TwelfthMan.new
mom = Mother.new

p excited_fan.yell_angrily("GET HIM")
p excited_fan.yelling_happily("Touchdown")

p mom.yell_angrily("Clean up your room")
p mom.yelling_happily("Straight A's")

