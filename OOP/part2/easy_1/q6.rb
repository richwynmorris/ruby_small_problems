# Question 6

# What could we add to the class below to access the instance variable @volume?

class Cube
attr_accessor :volume

  def initialize(volume)
    @volume = volume
  end
end


# or 

class Cube
  def initialize(volume)
    @volume = volume
  end

  def volume
    @volume
  end
end