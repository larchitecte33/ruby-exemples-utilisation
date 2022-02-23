module Notes
  attr  :concertA
  def tuning(amt)
    @concertA = 440.0 + amt
  end
end


class Trumpet
  include Notes
  def initialize(tune)
    tuning(tune)
    puts "Instance method returns #{concertA}"
    puts "Instance variable is #{@concertA}"
  end
end


# The piano is a little flat, so we'll match it
Trumpet.new(-5.3)