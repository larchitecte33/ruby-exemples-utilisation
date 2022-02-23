class Fixnum
  alias oldPlus +
  alias oldMoins -
  
  def +(other)
    oldPlus(other).succ
  end
  
  def -(other)
	oldMoins(other).pred
  end
end

puts "#{1 + 2}"
a = 3
a += 4
puts "#{a}"

puts "#{7 - 4}"